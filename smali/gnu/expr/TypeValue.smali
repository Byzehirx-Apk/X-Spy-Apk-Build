.class public interface abstract Lgnu/expr/TypeValue;
.super Ljava/lang/Object;
.source "TypeValue.java"

# interfaces
.implements Ljava/lang/reflect/Type;


# virtual methods
.method public abstract convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
.end method

.method public abstract emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
.end method

.method public abstract emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
.end method

.method public abstract getConstructor()Lgnu/mapping/Procedure;
.end method

.method public abstract getImplementationType()Lgnu/bytecode/Type;
.end method
