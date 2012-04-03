% function aap=aas_addinitialstream(aap,streamname,varargin)
% Add initial stream
% Examples of use:
%  aap=aas_addinitialstream(aap,'structural',1,'/home/rcusack/my_structural.nii');
%     % subject 1
%
%  aap=aas_addinitialstream(aap,'fieldmaps',3,{'/home/rcusack/my_fm1.nii','/home/rcusack/my_fm1.nii'});
%     % subject 3


function aap=aas_addinitialstream(aap,streamname,varargin)

aap=aas_addtask(aap,'aamod_importfilesasstream',varargin(1:(end-1)));

% Now we need to tailor with this
if length(aap.tasklist.main.module)>1
    % First, lets move it to the beginning
    aap.tasklist.main.module=[aap.tasklist.main.module(end) aap.tasklist.main.module(1:(end-1))];
    % and do same to "before user changes" to prevent error trapping
    aap.aap_beforeuserchanges.tasklist.main.module=[aap.aap_beforeuserchanges.tasklist.main.module(end) aap.aap_beforeuserchanges.tasklist.main.module(1:(end-1))];
end;

% It's a little involved changing the engine's details by hand. For each
% change, also make change to "aap_beforeuserchanges" to prevent error
% trapping
% Add the streams and the files to the task settings
aap.tasksettings.aamod_importfilesasstream(end).outputstreams.stream{1}=streamname;
aap.aap_beforeuserchanges.tasksettings.aamod_importfilesasstream(end).outputstreams.stream{1}=streamname;
% And change the schema
aap.schema.tasksettings.aamod_importfilesasstream(end).outputstreams.stream{1}=streamname;
aap.aap_beforeuserchanges.schema.tasksettings.aamod_importfilesasstream(end).outputstreams.stream{1}=streamname;

% Add the files to import
fti=varargin{end};
if (~iscell(fti)), fti={fti}; end;
aap.tasksettings.aamod_importfilesasstream(end).filestoimport=fti;
aap.aap_beforeuserchanges.tasksettings.aamod_importfilesasstream(end).filestoimport=fti;



% Set domain based on number of inputs
switch (length(varargin)-1)
    case 0
        domain='study'
    case 1
        aap.tasksettings.aamod_importfilesasstream(end).subject=varargin{1};
        domain='subject'
    case 2
        aap.tasksettings.aamod_importfilesasstream(end).subject=varargin{1};
        aap.tasksettings.aamod_importfilesasstream(end).subject=varargin{2};
        domain='session'
end;
aap.schema.tasksettings.aamod_importfilesasstream(end).ATTRIBUTE.domain=domain;
