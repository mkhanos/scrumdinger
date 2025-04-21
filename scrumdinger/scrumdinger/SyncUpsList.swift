//
//  SyncUpsList.swift
//  scrumdinger
//
//  Created by Momo Khan on 4/21/25.
//

import ComposableArchitecture
import SwiftUI

@Reducer
struct SyncUpsList {
    @ObservableState
    struct State: Equatable {
        var syncups: IdentifiedArrayOf<SyncUp> = []
    }
    
    enum Action {
        case addSyncUpButtonTapped
        case onDelete(IndexSet)
        case syncUpTapped(id: SyncUp.ID)
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .addSyncUpButtonTapped:
                return .none
            case let .onDelete(indexSet):
                state.syncups.remove(atOffsets: indexSet)
                return .none
            case .syncUpTapped:
                return .none
            }
        }
    }
}
