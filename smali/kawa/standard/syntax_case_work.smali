.class Lkawa/standard/syntax_case_work;
.super Ljava/lang/Object;
.source "syntax_case.java"


# instance fields
.field inputExpression:Lgnu/expr/Declaration;

.field let:Lgnu/expr/LetExp;

.field literal_identifiers:[Ljava/lang/Object;

.field maxVars:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lkawa/standard/syntax_case_work;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
