import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Type u
  crackPropagationCriterion : Prop
  fractureToughness : Prop
  energyReleaseRate : Prop
  parisLaw : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackPropagationCriterionClosed : F.crackPropagationCriterion
  fractureToughnessClosed : F.fractureToughness
  energyReleaseRateClosed : F.energyReleaseRate
  parisLawClosed : F.parisLaw

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackPropagationCriterion ∧ F.fractureToughness ∧ F.energyReleaseRate ∧ F.parisLaw

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.crackPropagationCriterionClosed
    (And.intro E.fractureToughnessClosed
      (And.intro E.energyReleaseRateClosed E.parisLawClosed))

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse