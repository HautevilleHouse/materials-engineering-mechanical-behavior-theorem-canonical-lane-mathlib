import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

structure PhaseDiagram where
  phases : List String
  gibbsEnergy : Float
  phaseBoundaries : List (String × String)
  equilibriumDetermined : Prop
  phaseFractionModel : Prop
  equilibriumDeterminedTerm : equilibriumDetermined
  phaseFractionModelTerm : phaseFractionModel

structure PhaseDiagramEvidence (P : PhaseDiagram) where
  equilibriumDeterminedClosed : P.equilibriumDetermined
  phaseFractionModelClosed : P.phaseFractionModel

def PhaseDiagramClosed (P : PhaseDiagram) : Prop :=
  P.equilibriumDetermined ∧ P.phaseFractionModel

theorem phase_diagram_closed_from_evidence (P : PhaseDiagram)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.equilibriumDeterminedClosed E.phaseFractionModelClosed

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse
