.class Lgnu/kawa/functions/SetArray;
.super Lgnu/mapping/Procedure2;
.source "Setter.java"


# instance fields
.field array:Ljava/lang/Object;

.field elementType:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lgnu/expr/Language;)V
    .locals 7

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/SetArray;
    move-object v1, p1

    .local v1, "array":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "language":Lgnu/expr/Language;
    move-object v4, v0

    invoke-direct {v4}, Lgnu/mapping/Procedure2;-><init>()V

    .line 55
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    move-object v3, v4

    .line 56
    .local v3, "elementClass":Ljava/lang/Class;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v5

    iput-object v5, v4, Lgnu/kawa/functions/SetArray;->elementType:Lgnu/bytecode/Type;

    .line 57
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/kawa/functions/SetArray;->array:Ljava/lang/Object;

    .line 58
    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/SetArray;
    move-object v1, p1

    .local v1, "index":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/SetArray;->elementType:Lgnu/bytecode/Type;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 63
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/SetArray;->array:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 66
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/functions/SetArray;
    return-object v0
.end method
