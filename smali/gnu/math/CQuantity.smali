.class public Lgnu/math/CQuantity;
.super Lgnu/math/Quantity;
.source "CQuantity.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field num:Lgnu/math/Complex;

.field unt:Lgnu/math/Unit;


# direct methods
.method public constructor <init>(Lgnu/math/Complex;Lgnu/math/Unit;)V
    .locals 5

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lgnu/math/CQuantity;
    move-object v1, p1

    .local v1, "num":Lgnu/math/Complex;
    move-object v2, p2

    .local v2, "unit":Lgnu/math/Unit;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/math/Quantity;-><init>()V

    .line 16
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/math/CQuantity;->num:Lgnu/math/Complex;

    .line 17
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/math/CQuantity;->unt:Lgnu/math/Unit;

    .line 18
    return-void
.end method

.method public constructor <init>(Lgnu/math/RealNum;Lgnu/math/RealNum;Lgnu/math/Unit;)V
    .locals 10

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/math/CQuantity;
    move-object v1, p1

    .local v1, "real":Lgnu/math/RealNum;
    move-object v2, p2

    .local v2, "imag":Lgnu/math/RealNum;
    move-object v3, p3

    .local v3, "unit":Lgnu/math/Unit;
    move-object v4, v0

    invoke-direct {v4}, Lgnu/math/Quantity;-><init>()V

    .line 22
    move-object v4, v0

    new-instance v5, Lgnu/math/CComplex;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    iput-object v5, v4, Lgnu/math/CQuantity;->num:Lgnu/math/Complex;

    .line 23
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/math/CQuantity;->unt:Lgnu/math/Unit;

    .line 24
    return-void
.end method


# virtual methods
.method public isExact()Z
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/math/CQuantity;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/CQuantity;->num:Lgnu/math/Complex;

    invoke-virtual {v1}, Lgnu/math/Complex;->isExact()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/math/CQuantity;
    return v0
.end method

.method public isZero()Z
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lgnu/math/CQuantity;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/CQuantity;->num:Lgnu/math/Complex;

    invoke-virtual {v1}, Lgnu/math/Complex;->isZero()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/math/CQuantity;
    return v0
.end method

.method public number()Lgnu/math/Complex;
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/math/CQuantity;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/CQuantity;->num:Lgnu/math/Complex;

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/CQuantity;
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
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/math/CQuantity;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/math/Complex;

    iput-object v3, v2, Lgnu/math/CQuantity;->num:Lgnu/math/Complex;

    .line 48
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/math/Unit;

    iput-object v3, v2, Lgnu/math/CQuantity;->unt:Lgnu/math/Unit;

    .line 49
    return-void
.end method

.method public unit()Lgnu/math/Unit;
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/math/CQuantity;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/CQuantity;->unt:Lgnu/math/Unit;

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/CQuantity;
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/math/CQuantity;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/math/CQuantity;->num:Lgnu/math/Complex;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 41
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/math/CQuantity;->unt:Lgnu/math/Unit;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 42
    return-void
.end method
