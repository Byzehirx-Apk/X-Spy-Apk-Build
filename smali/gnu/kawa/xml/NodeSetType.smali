.class public Lgnu/kawa/xml/NodeSetType;
.super Lgnu/kawa/reflect/OccurrenceType;
.source "NodeSetType.java"


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 6

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeSetType;
    move-object v1, p1

    .local v1, "itemType":Lgnu/bytecode/Type;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v2, v3, v4, v5}, Lgnu/kawa/reflect/OccurrenceType;-><init>(Lgnu/bytecode/Type;II)V

    .line 11
    return-void
.end method

.method public static getInstance(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .locals 5

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "base":Lgnu/bytecode/Type;
    new-instance v1, Lgnu/kawa/xml/NodeSetType;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/kawa/xml/NodeSetType;-><init>(Lgnu/bytecode/Type;)V

    move-object v0, v1

    .end local v0    # "base":Lgnu/bytecode/Type;
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/NodeSetType;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-super {v2}, Lgnu/kawa/reflect/OccurrenceType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "node-set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/NodeSetType;
    return-object v0
.end method
