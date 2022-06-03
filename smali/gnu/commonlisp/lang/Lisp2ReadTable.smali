.class Lgnu/commonlisp/lang/Lisp2ReadTable;
.super Lgnu/kawa/lispexpr/ReadTable;
.source "Lisp2.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/Lisp2ReadTable;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/kawa/lispexpr/ReadTable;-><init>()V

    return-void
.end method


# virtual methods
.method protected makeSymbol(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lang/Lisp2ReadTable;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/commonlisp/lang/Lisp2;->asSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/commonlisp/lang/Lisp2ReadTable;
    return-object v0
.end method
