import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

structure StressStrainRelation where
  elasticModulus : Float
  yieldStrength : Float
  hookesLawLinear : Prop
  plasticDeformation : Prop

def StressStrainRelationClosed (S : StressStrainRelation) : Prop :=
  S.hookesLawLinear ∧ S.plasticDeformation

theorem stress_strain_relation_closed (S : StressStrainRelation) : StressStrainRelationClosed S := by
  exact And.intro S.hookesLawLinear S.plasticDeformation

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse