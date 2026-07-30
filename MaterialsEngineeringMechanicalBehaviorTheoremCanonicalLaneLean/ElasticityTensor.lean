import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

structure ElasticityTensor where
  stiffnessMatrix : List (List Float)
  complianceMatrix : List (List Float)
  symmetryConditions : Prop
  positiveDefiniteness : Prop

def ElasticityTensorClosed (E : ElasticityTensor) : Prop :=
  E.symmetryConditions ∧ E.positiveDefiniteness

theorem elasticity_tensor_closed (E : ElasticityTensor) : ElasticityTensorClosed E := by
  exact And.intro E.symmetryConditions E.positiveDefiniteness

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse