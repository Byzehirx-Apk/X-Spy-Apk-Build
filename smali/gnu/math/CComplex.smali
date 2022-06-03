.class public Lgnu/math/CComplex;
.super Lgnu/math/Complex;
.source "CComplex.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field imag:Lgnu/math/RealNum;

.field real:Lgnu/math/RealNum;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/math/CComplex;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/math/Complex;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V
    .locals 5

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/math/CComplex;
    move-object v1, p1

    .local v1, "real":Lgnu/math/RealNum;
    move-object v2, p2

    .local v2, "imag":Lgnu/math/RealNum;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/math/Complex;-><init>()V

    .line 23
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/math/CComplex;->real:Lgnu/math/RealNum;

    .line 24
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/math/CComplex;->imag:Lgnu/math/RealNum;

    .line 25
    return-void
.end method


# virtual methods
.method public im()Lgnu/math/RealNum;
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/math/CComplex;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/CComplex;->imag:Lgnu/math/RealNum;

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/CComplex;
    return-object v0
.end method

.method public re()Lgnu/math/RealNum;
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/math/CComplex;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/CComplex;->real:Lgnu/math/RealNum;

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/CComplex;
    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/math/CComplex;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/math/RealNum;

    iput-object v3, v2, Lgnu/math/CComplex;->real:Lgnu/math/RealNum;

    .line 43
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/math/RealNum;

    iput-object v3, v2, Lgnu/math/CComplex;->imag:Lgnu/math/RealNum;

    .line 44
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/math/CComplex;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/math/CComplex;->real:Lgnu/math/RealNum;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 36
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/math/CComplex;->imag:Lgnu/math/RealNum;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 37
    return-void
.end method
