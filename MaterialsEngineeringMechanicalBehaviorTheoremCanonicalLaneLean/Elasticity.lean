import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  elasticModulus : Type w
  hookesLaw : Prop
  poissonRatioBounded : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  hookesLawClosed : E.hookesLaw
  poissonRatioBoundedClosed : E.poissonRatioBounded

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookesLaw ∧ E.poissonRatioBounded

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.hookesLawClosed Ev.poissonRatioBoundedClosed

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse