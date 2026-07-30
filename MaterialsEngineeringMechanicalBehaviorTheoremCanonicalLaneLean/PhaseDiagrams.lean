import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

structure PhaseDiagramsPackage where
  temperatureAxis : Type u
  compositionAxis : Type v
  phaseBoundaries : Prop
  eutecticPoint : Prop
  phaseRuleSatisfied : Prop

structure PhaseDiagramsEvidence (P : PhaseDiagramsPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  eutecticPointClosed : P.eutecticPoint
  phaseRuleSatisfiedClosed : P.phaseRuleSatisfied

def PhaseDiagramsClosed (P : PhaseDiagramsPackage) : Prop :=
  P.phaseBoundaries ∧ P.eutecticPoint ∧ P.phaseRuleSatisfied

theorem phase_diagrams_closed_from_evidence (P : PhaseDiagramsPackage) (E : PhaseDiagramsEvidence P) :
    PhaseDiagramsClosed P := by
  exact And.intro E.phaseBoundariesClosed
    (And.intro E.eutecticPointClosed E.phaseRuleSatisfiedClosed)

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse