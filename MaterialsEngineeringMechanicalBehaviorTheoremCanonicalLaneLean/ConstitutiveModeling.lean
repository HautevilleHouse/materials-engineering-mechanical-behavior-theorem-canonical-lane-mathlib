import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

structure ConstitutiveModelPackage where
  elasticResponse : Prop
  plasticFlowRule : Prop
  yieldCriterion : Prop
  hardeningModel : Prop
  temperatureDependence : Prop

structure ConstitutiveModelEvidence (C : ConstitutiveModelPackage) where
  elasticResponseClosed : C.elasticResponse
  plasticFlowRuleClosed : C.plasticFlowRule
  yieldCriterionClosed : C.yieldCriterion
  hardeningModelClosed : C.hardeningModel
  temperatureDependenceClosed : C.temperatureDependence

def ConstitutiveModelClosed (C : ConstitutiveModelPackage) : Prop :=
  C.elasticResponse ∧ C.plasticFlowRule ∧
  C.yieldCriterion ∧ C.hardeningModel ∧ C.temperatureDependence

theorem constitutive_model_closed_from_evidence (C : ConstitutiveModelPackage)
    (E : ConstitutiveModelEvidence C) : ConstitutiveModelClosed C := by
  exact And.intro E.elasticResponseClosed
    (And.intro E.plasticFlowRuleClosed
      (And.intro E.yieldCriterionClosed
        (And.intro E.hardeningModelClosed E.temperatureDependenceClosed)))

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse