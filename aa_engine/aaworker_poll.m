% This function is automagically generated by aa_build_standalone
% This is a message pump for the worker

function aaworker_poll(obj,event)
%#function aamod_ANTS_EPIwarp.m aamod_ANTS_build_MMtemplate.m aamod_ANTS_build_template.m aamod_ANTS_struc2epi.m aamod_ANTS_struc2template.m aamod_ANTS_warp.m aamod_GLMdenoise.m aamod_LoAd.m aamod_LoAd2SPM.m aamod_LouvainCluster.m aamod_MP2RAGE.m aamod_MTI2MTR.m aamod_autoidentifyseries.m aamod_autoidentifyseries_siemens.m aamod_bet.m aamod_bet_epi_masking.m aamod_bet_epi_reslicing.m aamod_bet_freesurfer.m aamod_bet_premask.m aamod_biascorrect.m aamod_biascorrect_ANTS.m aamod_biascorrect_segment8.m aamod_biascorrect_segment8_multichan.m aamod_binarizeimage.m aamod_binaryfromlabels.m aamod_brainmask.m aamod_brainmaskcombine.m aamod_checkparameters.m aamod_clusteringXValidation.m aamod_compSignal.m aamod_compareoverlap.m aamod_convert_diffusion.m aamod_convert_dmdx.m aamod_convert_epis.m aamod_convert_fieldmaps.m aamod_convert_specialseries.m aamod_convert_structural.m aamod_copy_image_orientation.m aamod_coreg_extended.m aamod_coreg_extended_1.m aamod_coreg_extended_2.m aamod_coreg_general.m aamod_coreg_noss.m aamod_coreg_structural2fa.m aamod_coreg_structural2template.m aamod_coregisterstructural2template.m aamod_dartel_createtemplate.m aamod_dartel_denorm.m aamod_dartel_normmni.m aamod_decodeDMLT.m aamod_denoiseANLM.m aamod_diffusion_bedpostx.m aamod_diffusion_dki_tractography_prepare.m aamod_diffusion_dkifit.m aamod_diffusion_dtifit.m aamod_diffusion_dtinlfit.m aamod_diffusion_eddycorrect.m aamod_diffusion_extractnodif.m aamod_diffusion_probtrackx.m aamod_diffusion_probtrackxsummarize_group.m aamod_diffusion_probtrackxsummarize_indv.m aamod_diffusion_roi_valid.m aamod_diffusionfromnifti.m aamod_epifromnifti.m aamod_evaluatesubjectnames.m aamod_fconn_computematrix.m aamod_fconnmatrix_seedseed.m aamod_fieldmap2VDM.m aamod_fieldmapfromnifti.m aamod_firstlevel_contrasts.m aamod_firstlevel_model.m aamod_firstlevel_model_MVPaa.m aamod_firstlevel_modelspecify.m aamod_firstlevel_threshold.m aamod_freesurfer_autorecon.m aamod_freesurfer_deface.m aamod_freesurfer_deface_apply.m aamod_freesurfer_initialise.m aamod_freesurfer_register.m aamod_fsl_FAST.m aamod_fsl_FIRST.m aamod_fsl_reorienttoMNI.m aamod_fsl_robustFOV.m aamod_fslmaths.m aamod_fslmerge.m aamod_fslsplit.m aamod_garbagecollection.m aamod_get_dicom_ASL.m aamod_get_dicom_diffusion.m aamod_get_dicom_epi.m aamod_get_dicom_fieldmap.m aamod_get_dicom_specialseries.m aamod_get_dicom_structural.m aamod_get_tSNR.m aamod_ggmfit.m aamod_highpass.m aamod_highpassfilter_epi.m aamod_imcalc.m aamod_importfilesasstream.m aamod_input_staging.m aamod_listspikes.m aamod_make_epis_float.m aamod_mapstreams.m aamod_marsbar.m aamod_mask_fromsegment.m aamod_mask_fromstruct.m aamod_maths.m aamod_meanepitimecourse.m aamod_meg_average.m aamod_meg_convert.m aamod_meg_denoise_ICA_1.m aamod_meg_denoise_ICA_2_applytrajectory.m aamod_meg_epochs.m aamod_meg_get_fif.m aamod_meg_grandmean.m aamod_meg_maxfilt.m aamod_meg_merge.m aamod_melodic.m aamod_mirrorandsubtract.m aamod_modelestimate.m aamod_movie.m aamod_moviecorr_meantimecourse.m aamod_moviecorr_summary.m aamod_newsubj_init.m aamod_norm_noss.m aamod_norm_vbm.m aamod_norm_write.m aamod_norm_write_dartel.m aamod_normalisebytotalgrey.m aamod_oneway_ANOVA.m aamod_pewarp_estimate.m aamod_pewarp_write.m aamod_possum.m aamod_ppi_model.m aamod_ppi_prepare.m aamod_realign.m aamod_realignunwarp.m aamod_reorientto.m aamod_reorienttomiddle.m aamod_reslice.m aamod_resliceROI.m aamod_reslice_rois.m aamod_roi_extract.m aamod_roi_valid.m aamod_rois_getvalues.m aamod_secondlevel_GIFT.m aamod_secondlevel_contrasts.m aamod_secondlevel_model.m aamod_secondlevel_randomise.m aamod_secondlevel_threshold.m aamod_seedConnectivity.m aamod_segment.m aamod_segment8.m aamod_segmentvbm8.m aamod_slicetiming.m aamod_smooth.m aamod_smooth_structurals.m aamod_split.m aamod_structural_overlay.m aamod_structuralfromnifti.m aamod_structuralstats.m aamod_study_init.m aamod_tSNR_EPI.m aamod_temporalfilter.m aamod_tensor_ica.m aamod_tissue_spectrum.m aamod_tissue_spectrum_summarize.m aamod_tissue_wavelets.m aamod_tissue_wavelets_summarize.m aamod_trimEPIVols.m aamod_tsdiffana.m aamod_unnormalise_rois.m aamod_unnormalise_rois2.m aamod_unzipstream.m aamod_vois_extract.m aamod_waveletdespike.m aamod_MVPaa_brain_1st.m aamod_MVPaa_brain_SPM.m aamod_MVPaa_roi_1st.m aamod_MVPaa_roi_2nd.m aamod_template_session.m
global aaworker;
numretries=1; % Now retries are handling by master - better at reallocating in case of memory errors etc.
stop(aaworker.polltimer);
mastertaskpth=fullfile(aaworker.parmpath,'pendingtask.mat');
taskpth=aas_propagatefrom(aaworker.master.hostname,mastertaskpth,'worker');
if (exist(taskpth))
    for i=1:30
        try
            task=load(taskpth);
            task=task.task;
            aaworker.aap=task.aap;
            break;
        catch
            % assume it was a file propagation delay or locking problem and so try again
            taskpth=aas_propagatefrom(aaworker.master.hostname,mastertaskpth,'worker');
            fprintf('waiting for propagation %d\n',i);
            pause(5.0);
        end;
    end;
    fprintf('AAWORKER: Found task %s here %s\n',task.name,taskpth);
    tic;
    switch (task.name)
        case 'doprocessing'
            for i=1:length(aaworker.aap.internal.taskqueue)

                % If at first you don't succeed, try, and try again
                for jj=1:numretries
                    try
                        mytask=aaworker.aap.internal.taskqueue(i);
                        % allow full path of module to be provided
                        [stagepath stagename]=fileparts(aaworker.aap.tasklist.main.module(mytask.k).name);
                        stagetag=aas_getstagetag(aaworker.aap,mytask.k);
                        try
                            aaworker.aap.tasklist.currenttask.settings=aaworker.aap.tasksettings.(stagename)(aaworker.aap.tasklist.main.module(mytask.k).index);
                        catch
                            aaworker.aap.tasklist.currenttask.settings=[];
                        end;

                        switch(mytask.domain)
                            % now run current stage
                            case 'study'
                                aas_log(aaworker.aap,0,sprintf('\nAAWORKER %s RUNNING: %s',stagetag,mytask.description));
                                [aaworker.aap,resp]=feval(aaworker.aap.tasklist.main.module(mytask.k).name,aaworker.aap,mytask.task);
                                writedoneflag(aaworker,mytask.doneflag);
                                aas_log(aaworker.aap,0,sprintf('\nAAWORKER %s COMPLETED',stagetag));
                            case 'subject'
                                aas_log(aaworker.aap,0,sprintf('\nAAWORKER %s RUNNING: %s for %s',stagetag,mytask.description,aas_getsubjdesc(aaworker.aap,mytask.i)));
                                [aaworker.aap,resp]=feval(aaworker.aap.tasklist.main.module(mytask.k).name,aaworker.aap,mytask.task,mytask.i);
                                writedoneflag(aaworker,mytask.doneflag);
                                aas_log(aaworker.aap,0,sprintf('\nAAWORKER %s COMPLETED',aaworker.aap.tasklist.main.module(mytask.k).name));
                            case 'session'
                                aas_log(aaworker.aap,0,sprintf('\nAAWORKER %s RUNNING: %s for %s ',aaworker.aap.tasklist.main.module(mytask.k).name,mytask.description,aas_getsessdesc(aaworker.aap,mytask.i,mytask.j)));
                                [aaworker.aap,resp]=feval(aaworker.aap.tasklist.main.module(mytask.k).name,aaworker.aap,mytask.task,mytask.i,mytask.j);
                                writedoneflag(aaworker,mytask.doneflag);
                                aas_log(aaworker.aap,0,sprintf('\nAAWORKER %s COMPLETED',aaworker.aap.tasklist.main.module(mytask.k).name));
                            case 'internal'
                                if ~mytask.i % need to setup loop variable
                                    [aaworker.aap,resp]=feval(aaworker.aap.tasklist.main.module(mytask.k).name,aaworker.aap,'parallelise');
                                    mkdir(mytask.doneflag);
                                    aas_propagateto(aaworker.master.hostname,mytask.doneflag);
                                    aas_log(aaworker.aap,0,sprintf('\nAAWORKER %s PARALLELISED',stagetag));
                                else
                                    aas_log(aaworker.aap,0,sprintf('\nAAWORKER %s RUNNING: %s',stagetag,mytask.description));
                                    [aaworker.aap,resp]=feval(aaworker.aap.tasklist.main.module(mytask.k).name,aaworker.aap,mytask.task,mytask.i);
                                    writedoneflag(aaworker,mytask.doneflag); % includes propagation
                                    aas_log(aaworker.aap,0,sprintf('\nAAWORKER %s COMPLETED',aaworker.aap.tasklist.main.module(mytask.k).name));
                                    doneflagpath=fileparts(mytask.doneflag);
                                    alldone=aas_checkinternaldomainprogress(doneflagpath);
                                    if alldone 
                                        writedoneflag(aaworker,fullfile(doneflagpath,'all.done'));
                                        aas_log(aaworker.aap,0,sprintf('\nALL %s SUBTASKS COMPLETED',aaworker.aap.tasklist.main.module(mytask.k).name));
                                    end
                                end
                        end;
                        jj=0;
                        % Flush diary to update
                        diary off
                        diary(aaworker.diaryname)
                        break;
                    catch;
                        % Flush diary to update
                        diary off
                        diary(aaworker.diaryname)
                        % make sure we're in the right directory
                        le=lasterror;
                        cd (aaworker.aap.internal.pwd);
                        aas_log(aaworker.aap,0,sprintf('AAWORKER WARNING: retrying as failed on attempt %d of %d with error:\n\t%s',jj,numretries,le.message));
                        for kk=1:length(le.stack)
                            aas_log(aaworker.aap,0,sprintf(' file %s name %s line %d',le.stack(kk).file,le.stack(kk).name,le.stack(kk).line));
                        end;
                    end;
                end; % next retry
                if (jj==numretries)
                    aas_log(aaworker.aap,1,sprintf('AAWORKER ERROR: %d retries did not suceed - see details above',numretries));
                end;
            end; % next task in queue
    end; % currently redundant
    try
        aaworker_setspmvisibility
        delete(taskpth);
        delete(mastertaskpth);
        timenow=now;
        boredfn=fullfile(aaworker.parmpath,'iambored.mat');
        save(boredfn,'timenow'); rehash
        aas_propagateto(aaworker.master.hostname,boredfn);
        aaworker.lastexcitement=clock;
    catch
        debugnow
        % Flush diary to update
        diary off
        diary(aaworker.diaryname)
    end;
else
    % Terminate worker if not used for 3 minutes
    if (etime(clock,aaworker.lastexcitement)>180)
        try
            aas_log(aaworker.aap,0,'There is nothing happening. I am out of here.\n');
            diary off
        catch
            % Flush diary to update
            diary off
            diary(aaworker.diaryname)
        end;
        % Now use recursive kill to finish self off, as this will get any
        % child processes
        aas_sackworker(aaworker.aap,aaworker.id);
        % bet you never get here
        exit;
    end;
end;
% Flush diary to update
diary off
diary(aaworker.diaryname)


start(aaworker.polltimer);

%%
function writedoneflag(aaworker,fn)
fid=fopen(fn,'w');
if (~fid) aas_log(aaworker.aap,1,['Error writing done flag ' fn]); end;
try fprintf(fid,'%f',toc);
catch
    keyboard
end
fclose(fid);
aas_propagateto(aaworker.master.hostname,fn);
return;



