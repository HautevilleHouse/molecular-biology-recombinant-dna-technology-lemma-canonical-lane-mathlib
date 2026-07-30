import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean.RestrictionEnzymePackage

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure LigationPackage (R : RestrictionEnzymePackage) where
  vectorFragment : String
  insertFragment : String
  stickyEndCompatible : Bool
  ligasePresent : Bool
  recombinantFormed : Bool

structure LigationEvidence {R : RestrictionEnzymePackage} (L : LigationPackage R) where
  compatibilityClosed : L.stickyEndCompatible = true → L.recombinantFormed = true
  ligaseClosed : L.ligasePresent = true → L.recombinantFormed = true

def LigationClosed {R : RestrictionEnzymePackage} (L : LigationPackage R) : Prop :=
  (L.stickyEndCompatible → L.recombinantFormed) ∧ (L.ligasePresent → L.recombinantFormed)

theorem ligation_closed_from_evidence
    {R : RestrictionEnzymePackage} (L : LigationPackage R) (E : LigationEvidence L) :
    LigationClosed L :=
  And.intro (fun h => E.compatibilityClosed h) (fun h => E.ligaseClosed h)

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse