import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

structure MaterialsAdmittedObject where
  material : Type u
  mechanicalProperty : Prop
  evidence : mechanicalProperty

def materialsWitnessClosed (O : MaterialsAdmittedObject) : Prop :=
  O.mechanicalProperty

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse