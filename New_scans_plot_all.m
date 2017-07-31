% New_scans_plot_all
% Produce the updated plots (16/6/17)
% Uses the results from Run_single_variable_scan.m to make the computational result
% Also uses the results from a composition scan
% This is generated by the function Deconvolute_composition_scan.m (which extends Process_composition_scan.m)
% N.b. electron density is manually hard coded in in Process_composition_scan.m (line 36)
% All subroutines and results are saved in OutputPlots

Computational_line_width = 2;
Experimental_line_width = 2;
Experimental_marker_size = 10;
Close_after_save = true;

MATLAB_colours = [         0    0.4470    0.7410; ...
    0.8500    0.3250    0.0980; ...
    0.9290    0.6940    0.1250; ...
    0.4940    0.1840    0.5560; ...
    0.4660    0.6740    0.1880; ...
    0.3010    0.7450    0.9330; ...
    0.6350    0.0780    0.1840];

% FullWidthStyle = hgexport('readstyle','FullWidthFigure');
CW = hgexport('readstyle','ColumnWidth');
% Save for replicability
save('OutputPlots/Outputs/ExportStyles_updated','CW');

% Composition scans
FigureWidth_control = 'Column';
Comp_scan_langmuir
CW.Format = 'eps';
    hgexport(gcf,'OutputPlots/Outputs/Composition_scan_langmuir.eps',CW);
    CW.Format = 'png';
    hgexport(gcf,'OutputPlots/Outputs/Composition_scan_langmuir.png',CW);
    savefig(gcf,'OutputPlots/Outputs/Composition_scan_langmuir.fig')
    close(langmuir_figure);
    clear('langmuir_figure');

Comp_scan_plot_neutrals
    CW.Format = 'eps';
    hgexport(gcf,'OutputPlots/Outputs/Composition_scan_neutrals.eps',CW);
    CW.Format = 'png';
    hgexport(gcf,'OutputPlots/Outputs/Composition_scan_neutrals.png',CW);
    savefig(gcf,'OutputPlots/Outputs/Composition_scan_neutrals.fig')
    close(neutral_figure);
    clear('neutral_figure');

Comp_scan_plot_ions
    CW.Format = 'eps';
    hgexport(gcf,'OutputPlots/Outputs/Composition_scan_ions.eps',CW);
    CW.Format = 'png';
    hgexport(gcf,'OutputPlots/Outputs/Composition_scan_ions.png',CW);
    savefig(gcf,'OutputPlots/Outputs/Composition_scan_ions.fig')
    close(ion_figure);
    clear('ion_figure');

Comp_scan_plot_surface
    CW.Format = 'eps';
    hgexport(gcf,'OutputPlots/Outputs/Composition_scan_surface.eps',CW);
    CW.Format = 'png';
    hgexport(gcf,'OutputPlots/Outputs/Composition_scan_surface.png',CW);
    savefig(gcf,'OutputPlots/Outputs/Composition_scan_surface.fig')
    close(surface_figure);
    clear('surface_figure');

Comp_scan_plot_fractions
    CW.Format = 'eps';
    hgexport(gcf,'OutputPlots/Outputs/Composition_scan_fraction.eps',CW);
    CW.Format = 'png';
    hgexport(gcf,'OutputPlots/Outputs/Composition_scan_fraction.png',CW);
    savefig(gcf,'OutputPlots/Outputs/Composition_scan_fraction.fig')
    close(fractions_figure);
    clear('fractions_figure');

Comp_scan_plot_reactions_prod
    CW.Format = 'eps';
    hgexport(gcf,'OutputPlots/Outputs/Composition_scan_reaction_prod.eps',CW);
    CW.Format = 'png';
    hgexport(gcf,'OutputPlots/Outputs/Composition_scan_reaction_prod.png',CW);
    savefig(gcf,'OutputPlots/Outputs/Composition_scan_reaction_prod.fig')
    close(reaction_figure);
    clear('reaction_figure');

Comp_scan_plot_reactions_loss
    CW.Format = 'eps';
    hgexport(gcf,'OutputPlots/Outputs/Composition_scan_reaction_loss.eps',CW);
    CW.Format = 'png';
    hgexport(gcf,'OutputPlots/Outputs/Composition_scan_reaction_loss.png',CW);
    savefig(gcf,'OutputPlots/Outputs/Composition_scan_reaction_loss.fig')
    close(reaction_figure);
    clear('reaction_figure');

Comp_scan_plot_reactions_prod_fTe
    CW.Format = 'eps';
    hgexport(gcf,'OutputPlots/Outputs/Composition_scan_reaction_prod_fTe.eps',CW);
    CW.Format = 'png';
    hgexport(gcf,'OutputPlots/Outputs/Composition_scan_reaction_prod_fTe.png',CW);
    savefig(gcf,'OutputPlots/Outputs/Composition_scan_reaction_prod_fTe.fig')
    close(reaction_figure);
    clear('reaction_figure');

Comp_scan_plot_reactions_loss_fTe
    CW.Format = 'eps';
    hgexport(gcf,'OutputPlots/Outputs/Composition_scan_reaction_loss_fTe.eps',CW);
    CW.Format = 'png';
    hgexport(gcf,'OutputPlots/Outputs/Composition_scan_reaction_loss_fTe.png',CW);
    savefig(gcf,'OutputPlots/Outputs/Composition_scan_reaction_loss_fTe.fig')
    close(reaction_figure);
    clear('reaction_figure');

% Power scans
Power_scan_plot_neutrals
    CW.Format = 'eps';
    hgexport(gcf,'OutputPlots/Outputs/Power_scan_neutrals.eps',CW);
    CW.Format = 'png';
    hgexport(gcf,'OutputPlots/Outputs/Power_scan_neutrals.png',CW);
    savefig(gcf,'OutputPlots/Outputs/Power_scan_neutrals.fig')
    close(neutral_figure_p);
    clear('neutral_figure_p');

Power_scan_plot_ions
    CW.Format = 'eps';
    hgexport(gcf,'OutputPlots/Outputs/Power_scan_ions.eps',CW);
    CW.Format = 'png';
    hgexport(gcf,'OutputPlots/Outputs/Power_scan_ions.png',CW);
    savefig(gcf,'OutputPlots/Outputs/Power_scan_ions.fig')
    close(ion_figure_p);
    clear('ion_figure_p');

Power_scan_plot_surface
    CW.Format = 'eps';
    hgexport(gcf,'OutputPlots/Outputs/Power_scan_surface.eps',CW);
    CW.Format = 'png';
    hgexport(gcf,'OutputPlots/Outputs/Power_scan_surface.png',CW);
    savefig(gcf,'OutputPlots/Outputs/Power_scan_surface.fig')
    close(surface_figure_p);
    clear('surface_figure_p');

Power_scan_plot_fractions
    CW.Format = 'eps';
    hgexport(gcf,'OutputPlots/Outputs/Power_scan_fraction.eps',CW);
    CW.Format = 'png';
    hgexport(gcf,'OutputPlots/Outputs/Power_scan_fraction.png',CW);
    savefig(gcf,'OutputPlots/Outputs/Power_scan_fraction.fig')
    close(fractions_figure_p);
    clear('fractions_figure_p');

Power_scan_plot_reactions_prod
    CW.Format = 'eps';
    hgexport(gcf,'OutputPlots/Outputs/Power_scan_reaction_prod.eps',CW);
    CW.Format = 'png';
    hgexport(gcf,'OutputPlots/Outputs/Power_scan_reaction_prod.png',CW);
    savefig(gcf,'OutputPlots/Outputs/Power_scan_reaction_prod.fig')
    close(reaction_figure);
    clear('reaction_figure');

Power_scan_plot_reactions_loss
    CW.Format = 'eps';
    hgexport(gcf,'OutputPlots/Outputs/Power_scan_reaction_loss.eps',CW);
    CW.Format = 'png';
    hgexport(gcf,'OutputPlots/Outputs/Power_scan_reaction_loss.png',CW);
    savefig(gcf,'OutputPlots/Outputs/Power_scan_reaction_loss.fig')
    close(reaction_figure);
    clear('reaction_figure');


close hidden
clear('Controller')

disp('Done')

% clear('Close_after_save', 'CW', 'Computational_line_width', 'Experimental_line_width', 'Experimental_marker_size', 'FigureWidth_control', 'FullWidthStyle', 'MATLAB_colours')