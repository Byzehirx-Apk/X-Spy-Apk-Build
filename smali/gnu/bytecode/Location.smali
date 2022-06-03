.class public Lgnu/bytecode/Location;
.super Ljava/lang/Object;
.source "Location.java"


# instance fields
.field protected name:Ljava/lang/String;

.field name_index:I

.field signature_index:I

.field protected type:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Location;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Location;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Location;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Location;
    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Location;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Location;->type:Lgnu/bytecode/Type;

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Location;
    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Location;
    move-object v1, v0

    iget-object v1, v1, Lgnu/bytecode/Location;->type:Lgnu/bytecode/Type;

    move-object v0, v1

    .end local v0    # "this":Lgnu/bytecode/Location;
    return-object v0
.end method

.method public final setName(ILgnu/bytecode/ConstantPool;)V
    .locals 7

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Location;
    move v1, p1

    .local v1, "name_index":I
    move-object v2, p2

    .local v2, "constants":Lgnu/bytecode/ConstantPool;
    move v4, v1

    if-gtz v4, :cond_0

    .line 27
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lgnu/bytecode/Location;->name:Ljava/lang/String;

    .line 34
    :goto_0
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lgnu/bytecode/Location;->name_index:I

    .line 35
    return-void

    .line 30
    :cond_0
    move-object v4, v2

    move v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/CpoolUtf8;

    move-object v3, v4

    .line 32
    .local v3, "nameConstant":Lgnu/bytecode/CpoolUtf8;
    move-object v4, v0

    move-object v5, v3

    iget-object v5, v5, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    iput-object v5, v4, Lgnu/bytecode/Location;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Location;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/Location;->name:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setSignature(ILgnu/bytecode/ConstantPool;)V
    .locals 7

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Location;
    move v1, p1

    .local v1, "signature_index":I
    move-object v2, p2

    .local v2, "constants":Lgnu/bytecode/ConstantPool;
    move-object v4, v2

    move v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/CpoolUtf8;

    move-object v3, v4

    .line 53
    .local v3, "sigConstant":Lgnu/bytecode/CpoolUtf8;
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lgnu/bytecode/Location;->signature_index:I

    .line 54
    move-object v4, v0

    move-object v5, v3

    iget-object v5, v5, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-static {v5}, Lgnu/bytecode/Type;->signatureToType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v5

    iput-object v5, v4, Lgnu/bytecode/Location;->type:Lgnu/bytecode/Type;

    .line 55
    return-void
.end method

.method public final setType(Lgnu/bytecode/Type;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/Location;
    move-object v1, p1

    .local v1, "type":Lgnu/bytecode/Type;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/bytecode/Location;->type:Lgnu/bytecode/Type;

    .line 45
    return-void
.end method
