import MotivicArchitectureCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MotivicArchitectureCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MotivicArchitectureCanonicalLaneLean
end HautevilleHouse
