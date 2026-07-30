import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

structure StrengtheningMechanismsPackage where
  grainBoundaryStrengthening : Prop
  solidSolutionStrengthening : Prop
  precipitationStrengthening : Prop
  workHardening : Prop
  hallPetchRelation : Prop

structure StrengtheningMechanismsEvidence (S : StrengtheningMechanismsPackage) where
  grainBoundaryStrengtheningClosed : S.grainBoundaryStrengthening
  solidSolutionStrengtheningClosed : S.solidSolutionStrengthening
  precipitationStrengtheningClosed : S.precipitationStrengthening
  workHardeningClosed : S.workHardening
  hallPetchRelationClosed : S.hallPetchRelation

def StrengtheningMechanismsClosed (S : StrengtheningMechanismsPackage) : Prop :=
  S.grainBoundaryStrengthening ∧ S.solidSolutionStrengthening ∧ S.precipitationStrengthening ∧ S.workHardening ∧ S.hallPetchRelation

theorem strengthening_mechanisms_closed_from_evidence (S : StrengtheningMechanismsPackage) (E : StrengtheningMechanismsEvidence S) :
    StrengtheningMechanismsClosed S := by
  exact And.intro E.grainBoundaryStrengtheningClosed
    (And.intro E.solidSolutionStrengtheningClosed
      (And.intro E.precipitationStrengtheningClosed
        (And.intro E.workHardeningClosed E.hallPetchRelationClosed)))

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse