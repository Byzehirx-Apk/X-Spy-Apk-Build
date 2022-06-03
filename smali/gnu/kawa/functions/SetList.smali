.class Lgnu/kawa/functions/SetList;
.super Lgnu/mapping/Procedure2;
.source "Setter.java"


# instance fields
.field elementType:Lgnu/bytecode/Type;

.field list:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/SetList;
    move-object v1, p1

    .local v1, "list":Ljava/util/List;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/Procedure2;-><init>()V

    .line 76
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/functions/SetList;->list:Ljava/util/List;

    .line 77
    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/SetList;
    move-object v1, p1

    .local v1, "index":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/SetList;->list:Ljava/util/List;

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 90
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/functions/SetList;
    return-object v0
.end method
