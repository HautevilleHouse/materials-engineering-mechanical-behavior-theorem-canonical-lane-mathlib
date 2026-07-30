import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  hookesLaw : Prop
  elasticModuli : Prop
  poissonsRatio : Prop
  yieldCriterion : Prop
  constitutiveModel : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  hookesLawClosed : E.hookesLaw
  elasticModuliClosed : E.elasticModuli
  poissonsRatioClosed : E.poissonsRatio
  yieldCriterionClosed : E.yieldCriterion
  constitutiveModelClosed : E.constitutiveModel

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookesLaw ∧ E.elasticModuli ∧ E.poissonsRatio ∧ E.yieldCriterion ∧ E.constitutiveModel

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.hookesLawClosed
    (And.intro Ev.elasticModuliClosed
      (And.intro Ev.poissonsRatioClosed
        (And.intro Ev.yieldCriterionClosed Ev.constitutiveModelClosed)))

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse