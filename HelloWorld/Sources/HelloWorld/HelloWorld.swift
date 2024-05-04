import SwiftUI
import ModuleA
import ModuleB

public struct HelloWorld: View {
    public init(){}
    public var body: some View {
        Text("hello world")
        ModuleAView()
        ModuleBView()
    }
}

#Preview {
    HelloWorld()
}
