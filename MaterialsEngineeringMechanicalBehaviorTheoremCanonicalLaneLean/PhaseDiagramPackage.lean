import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  components : List (Type u)
  temperature : Type v
  pressure : Type w
  phaseBoundaries : Prop
  eutecticPoint : Prop
  leverRule : Prop
  gibbsFreeEnergy : Prop
  phaseTransformationKinetics : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  eutecticPointClosed : P.eutecticPoint
  leverRuleClosed : P.leverRule
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  phaseTransformationKineticsClosed : P.phaseTransformationKinetics

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.eutecticPoint ∧ P.leverRule ∧ P.gibbsFreeEnergy ∧ P.phaseTransformationKinetics

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed
    (And.intro E.eutecticPointClosed
      (And.intro E.leverRuleClosed
        (And.intro E.gibbsFreeEnergyClosed E.phaseTransformationKineticsClosed)))

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse