//
//  CalculatorUseCaseTests.swift
//  Zaimka
//
//  Created by Anton Solovev on 27.04.2024.
//

@testable import Zaimka
import Testing

// MARK: - CalculatorUseCaseTests

struct CalculatorUseCaseTests {
    @Test func calculate_callsRepositoryMethods() {
        let mockRepository = MockCalculatorRepository()
        let useCase = CalculatorUseCase(repository: mockRepository)

        _ = useCase.calculate(amount: 100_000, term: 12, interestRate: 12)

        #expect(mockRepository.calculateMonthlyPaymentCallCount == 1)
        #expect(mockRepository.calculateOverpaymentCallCount == 1)
        #expect(mockRepository.calculateTotalPaidCallCount == 1)
    }

    @Test func calculate_returnsCorrectCalculation() {
        let mockRepository = MockCalculatorRepository()
        mockRepository.monthlyPaymentToReturn = 8884.88
        mockRepository.overpaymentToReturn = 6618.56
        mockRepository.totalPaidToReturn = 106_618.56

        let useCase = CalculatorUseCase(repository: mockRepository)

        let result = useCase.calculate(amount: 100_000, term: 12, interestRate: 12)

        #expect(abs(result.monthlyPayment - 8884.88) < 0.01)
        #expect(abs(result.overpayment - 6618.56) < 0.01)
        #expect(abs(result.totalPaid - 106_618.56) < 0.01)
    }
}
