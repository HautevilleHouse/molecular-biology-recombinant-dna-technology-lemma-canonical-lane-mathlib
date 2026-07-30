import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MolecularBiologyAdmittedObject where
  object : String
  evidence : Prop

structure AdmissibleClass where
  object : MolecularBiologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.evidence ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
