import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

structure DislocationPackage where
  burgersVector : Type u
  slipSystem : Type v
  dislocationDensity : Type w
  peierlsStress : Prop
  frankReadSource : Prop
  strainHardening : Prop
  creepMechanism : Prop

structure DislocationEvidence (D : DislocationPackage) where
  peierlsStressClosed : D.peierlsStress
  frankReadSourceClosed : D.frankReadSource
  strainHardeningClosed : D.strainHardening
  creepMechanismClosed : D.creepMechanism

def DislocationClosed (D : DislocationPackage) : Prop :=
  D.peierlsStress ∧ D.frankReadSource ∧ D.strainHardening ∧ D.creepMechanism

theorem dislocation_closed_from_evidence (D : DislocationPackage) (Ev : DislocationEvidence D) :
    DislocationClosed D := by
  exact And.intro Ev.peierlsStressClosed
    (And.intro Ev.frankReadSourceClosed
      (And.intro Ev.strainHardeningClosed Ev.creepMechanismClosed))

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse