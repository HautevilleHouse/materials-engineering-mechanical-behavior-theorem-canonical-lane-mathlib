import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

open HautevilleHouse.MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  materialsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.evidence

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse