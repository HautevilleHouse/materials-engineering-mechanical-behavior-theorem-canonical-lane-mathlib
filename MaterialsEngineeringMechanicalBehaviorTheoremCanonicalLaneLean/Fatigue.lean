import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

structure FatigueData where
  stressAmplitude : ℝ
  meanStress : ℝ
  cyclesToFailure : ℕ
  surfaceFinishFactor : ℝ

def fatigueAdmissible (f : FatigueData) : Prop :=
  f.stressAmplitude > 0 ∧ f.surfaceFinishFactor > 0

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse