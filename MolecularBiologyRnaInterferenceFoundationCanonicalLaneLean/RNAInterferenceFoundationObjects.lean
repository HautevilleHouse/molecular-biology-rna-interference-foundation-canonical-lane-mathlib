import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure RnaInterferenceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure RnaInterferenceAdmittedObject where
  space : RnaInterferenceSpace
  cellType : String
  rnaInducedSilencingComplex : Prop
  targetMessengerRna : Type
  silencingEfficiency : Nat
  conclusion : silencingEfficiency > 0

structure RnaInterferenceEndgameState where
  object : RnaInterferenceAdmittedObject

def RnaInterferenceWitnessClosed (O : RnaInterferenceAdmittedObject) : Prop :=
  O.silencingEfficiency > 0

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse