.class public Lgnu/expr/Literal;
.super Ljava/lang/Object;
.source "Literal.java"


# static fields
.field static final CYCLIC:I = 0x4

.field static final EMITTED:I = 0x8

.field static final WRITING:I = 0x1

.field static final WRITTEN:I = 0x2

.field public static final nullLiteral:Lgnu/expr/Literal;


# instance fields
.field argTypes:[Lgnu/bytecode/Type;

.field argValues:[Ljava/lang/Object;

.field public field:Lgnu/bytecode/Field;

.field public flags:I

.field index:I

.field next:Lgnu/expr/Literal;

.field public type:Lgnu/bytecode/Type;

.field value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 39
    new-instance v0, Lgnu/expr/Literal;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    invoke-direct {v1, v2, v3}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    sput-object v0, Lgnu/expr/Literal;->nullLiteral:Lgnu/expr/Literal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Field;Lgnu/expr/LitTable;)V
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Literal;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "field":Lgnu/bytecode/Field;
    move-object v3, p3

    .local v3, "litTable":Lgnu/expr/LitTable;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 90
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    .line 91
    move-object v4, v3

    iget-object v4, v4, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 92
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    .line 93
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    iput-object v5, v4, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    .line 94
    move-object v4, v0

    const/16 v5, 0xa

    iput v5, v4, Lgnu/expr/Literal;->flags:I

    .line 95
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Literal;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/Type;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 106
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    .line 107
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/LitTable;)V
    .locals 7

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Literal;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "type":Lgnu/bytecode/Type;
    move-object v3, p3

    .local v3, "litTable":Lgnu/expr/LitTable;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 99
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    .line 100
    move-object v4, v3

    iget-object v4, v4, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 101
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/expr/LitTable;)V
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Literal;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "litTable":Lgnu/expr/LitTable;
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Ljava/lang/String;Lgnu/expr/LitTable;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lgnu/expr/LitTable;)V
    .locals 7

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Literal;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "litTable":Lgnu/expr/LitTable;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 80
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    .line 81
    move-object v4, v3

    iget-object v4, v4, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 82
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v5

    iput-object v5, v4, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    .line 83
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Literal;->assign(Ljava/lang/String;Lgnu/expr/LitTable;)V

    .line 84
    return-void
.end method


# virtual methods
.method assign(Lgnu/bytecode/Field;Lgnu/expr/LitTable;)V
    .locals 5

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Literal;
    move-object v1, p1

    .local v1, "field":Lgnu/bytecode/Field;
    move-object v2, p2

    .local v2, "litTable":Lgnu/expr/LitTable;
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    iput-object v4, v3, Lgnu/expr/Literal;->next:Lgnu/expr/Literal;

    .line 68
    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    .line 69
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    .line 70
    return-void
.end method

.method assign(Lgnu/expr/LitTable;)V
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Literal;
    move-object v1, p1

    .local v1, "litTable":Lgnu/expr/LitTable;
    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/expr/Literal;->assign(Ljava/lang/String;Lgnu/expr/LitTable;)V

    .line 47
    return-void
.end method

.method assign(Ljava/lang/String;Lgnu/expr/LitTable;)V
    .locals 11

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Literal;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "litTable":Lgnu/expr/LitTable;
    move-object v4, v2

    iget-object v4, v4, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    iget-boolean v4, v4, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v4, :cond_0

    const/16 v4, 0x9

    :goto_0
    move v3, v4

    .line 55
    .local v3, "flags":I
    move-object v4, v1

    if-nez v4, :cond_1

    .line 57
    move-object v4, v0

    move-object v5, v2

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lgnu/expr/LitTable;->literalsCount:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lgnu/expr/LitTable;->literalsCount:I

    iput v5, v4, Lgnu/expr/Literal;->index:I

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Lit"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lgnu/expr/Literal;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 62
    :goto_1
    move-object v4, v0

    move-object v5, v2

    iget-object v5, v5, Lgnu/expr/LitTable;->mainClass:Lgnu/bytecode/ClassType;

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Literal;->assign(Lgnu/bytecode/Field;Lgnu/expr/LitTable;)V

    .line 63
    return-void

    .line 53
    .end local v3    # "flags":I
    :cond_0
    const/16 v4, 0x18

    goto :goto_0

    .line 61
    .restart local v3    # "flags":I
    :cond_1
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    goto :goto_1
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/expr/Literal;
    move-object v1, v0

    iget-object v1, v1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/expr/Literal;
    return-object v0
.end method
