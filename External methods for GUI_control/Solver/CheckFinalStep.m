function Converged = CheckFinalStep(Controller,ConvergencePrecision,ErrorMonitor)
	[~,msgId] = lastwarn;
	switch msgId
	case 'MATLAB:ode15s:IntegrationTolNotMet'
		Converged = -1;
		warning('GUI_control:SolveBalanceEquations:SystemDiverged',...
		        sprintf(['System diverged - results will be ignored\n',...
		     	'<<EXPERIMENT DETAILS>>',...
		        '\tPower absorbed (W): %s\n',...
		        '\tStarting pressure (mTorr): %s\n',...
		        '\tGas supply (sccm): %s\n'],...
		        num2str(Controller.Experiment.PowerAbsorbed(Controller.Solver.PowerAbsorbedIndex)),...
		        num2str(Controller.Experiment.StartingPressure(Controller.Solver.StartingPressureIndex)*1e3),...
		        Display_dict(Controller.Experiment.GasSupply,Controller)));
	case 'GUI_Control:SolveBalanceEquations:IllegalSystemConditions'
		Converged = -1;
		warning('GUI_control:SolveBalanceEquations:SystemDiverged',...
		        sprintf(['Illegal system conditions suggest system has diverged - results will be ignored\n',...
		     	'<<EXPERIMENT DETAILS>>',...
		        '\tPower absorbed (W): %s\n',...
		        '\tStarting pressure (mTorr): %s\n',...
		        '\tGas supply (sccm): %s\n'],...
		        num2str(Controller.Experiment.PowerAbsorbed(Controller.Solver.PowerAbsorbedIndex)),...
		        num2str(Controller.Experiment.StartingPressure(Controller.Solver.StartingPressureIndex)*1e3),...
		        Display_dict(Controller.Experiment.GasSupply,Controller)));
	otherwise
		Converged = 0;
		if ~Controller.Solver.EvaluationCancel
		warning('GUI_control:SolveBalanceEquations:ConvergencePrecisionNotMet',...
		        sprintf(['Max Evaluations (%s) reached before integration reached ConvergencePrecision\n',...
		     	'ConvergencePrecision: %s\n',...
		     	'Precision reached: %s\n',...
		     	'<<EXPERIMENT DETAILS>>',...
		        '\tPower absorbed (W): %s\n',...
		        '\tStarting pressure (mTorr): %s\n',...
		        '\tGas supply (sccm): %s\n'],...
		        num2str(Controller.Solver.MaxEvaluations),...
		        num2str(ConvergencePrecision,'%.1e'),...
		        num2str(min(max(ErrorMonitor(2:end,:))),'%.1e'),...
		        num2str(Controller.Experiment.PowerAbsorbed(Controller.Solver.PowerAbsorbedIndex)),...
		        num2str(Controller.Experiment.StartingPressure(Controller.Solver.StartingPressureIndex)*1e3),...
		        Display_dict(Controller.Experiment.GasSupply,Controller)));
		else
			warning('GUI_control:SolveBalanceEquations:EvaluationCancel',...
			        'Evaluation cancelled')
		end
	end
end
function Return_Display_dict = Display_dict(Dictionary,Controller)
	element_list    = LIST_C;
	for Key = Dictionary.keys
		Value = Dictionary(Key{:});
		element_list.append(sprintf('%s: %s',Key{:},num2str(Value(Controller.Solver.GasSupplyIndex))));
	end
	Return_Display_dict = strjoin(element_list.list,', ');
end