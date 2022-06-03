.class public Lgnu/commonlisp/lisp/PrimOps;
.super Lgnu/expr/ModuleBody;
.source "PrimOps.scm"


# static fields
.field public static final $instance:Lgnu/commonlisp/lisp/PrimOps;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/math/IntNum;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit29:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit30:Lgnu/mapping/SimpleSymbol;

.field static final Lit31:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final apply:Lgnu/expr/ModuleMethod;

.field public static final aref:Lgnu/expr/ModuleMethod;

.field public static final arrayp:Lgnu/expr/ModuleMethod;

.field public static final aset:Lgnu/expr/ModuleMethod;

.field public static final boundp:Lgnu/expr/ModuleMethod;

.field public static final car:Lgnu/expr/ModuleMethod;

.field public static final cdr:Lgnu/expr/ModuleMethod;

.field public static final char$Mnto$Mnstring:Lgnu/expr/ModuleMethod;

.field public static final fillarray:Lgnu/expr/ModuleMethod;

.field public static final fset:Lgnu/expr/ModuleMethod;

.field public static final functionp:Lgnu/expr/ModuleMethod;

.field public static final get:Lgnu/expr/ModuleMethod;

.field public static final length:Lgnu/expr/ModuleMethod;

.field public static final make$Mnstring:Lgnu/expr/ModuleMethod;

.field public static final plist$Mnget:Lgnu/expr/ModuleMethod;

.field public static final plist$Mnmember:Lgnu/expr/ModuleMethod;

.field public static final plist$Mnput:Lgnu/expr/ModuleMethod;

.field public static final plist$Mnremprop:Lgnu/expr/ModuleMethod;

.field public static final put:Lgnu/expr/ModuleMethod;

.field public static final set:Lgnu/expr/ModuleMethod;

.field public static final setcar:Lgnu/expr/ModuleMethod;

.field public static final setcdr:Lgnu/expr/ModuleMethod;

.field public static final setplist:Lgnu/expr/ModuleMethod;

.field public static final stringp:Lgnu/expr/ModuleMethod;

.field public static final substring:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnfunction:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnname:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnplist:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnvalue:Lgnu/expr/ModuleMethod;

.field public static final symbolp:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "functionp"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "char-to-string"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "substring"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "make-string"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "stringp"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "fillarray"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "aset"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "aref"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "arrayp"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "length"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "apply"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "fset"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "symbol-function"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "set"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "symbol-value"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "put"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "get"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "plist-member"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "plist-remprop"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "plist-put"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "plist-get"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "setplist"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "symbol-plist"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "symbol-name"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "symbolp"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "boundp"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "setcdr"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "setcar"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "cdr"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "car"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/4 v1, 0x0

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit1:Lgnu/math/IntNum;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "t"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/commonlisp/lisp/PrimOps;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    invoke-direct {v2}, Lgnu/commonlisp/lisp/PrimOps;-><init>()V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->$instance:Lgnu/commonlisp/lisp/PrimOps;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->$instance:Lgnu/commonlisp/lisp/PrimOps;

    move-object v0, v3

    move-object v3, v0

    const/4 v4, 0x1

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->car:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x2

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit3:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->cdr:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x3

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->setcar:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x4

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit5:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->setcdr:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x5

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->boundp:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x6

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit7:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->symbolp:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x7

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit8:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->symbol$Mnname:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x8

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit9:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->symbol$Mnplist:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x9

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit10:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->setplist:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xa

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->plist$Mnget:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xc

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit12:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3003

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->plist$Mnput:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xd

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit13:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->plist$Mnremprop:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xe

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit14:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->plist$Mnmember:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xf

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit15:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->get:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x11

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit16:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3003

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->put:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x12

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit17:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->symbol$Mnvalue:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x13

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit18:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->set:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x14

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit19:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->symbol$Mnfunction:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x15

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit20:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->fset:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x16

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit21:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0xfff

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->apply:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x17

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit22:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->length:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x18

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit23:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->arrayp:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x19

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit24:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->aref:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x1a

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit25:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3003

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->aset:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x1b

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit26:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->fillarray:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x1c

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit27:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->stringp:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x1d

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit28:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->make$Mnstring:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x1e

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit29:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->substring:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x20

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit30:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->char$Mnto$Mnstring:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x21

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit31:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->functionp:Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/commonlisp/lisp/PrimOps;->$instance:Lgnu/commonlisp/lisp/PrimOps;

    invoke-virtual {v1}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    move-object v1, v0

    invoke-static {v1}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs apply(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "func":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, v0

    invoke-static {v2}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    move-object v2, v0

    invoke-static {v2}, Lgnu/commonlisp/lisp/PrimOps;->symbolFunction(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/Procedure;

    :goto_0
    move-object v3, v1

    const/4 v4, 0x0

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->apply:Lgnu/expr/ModuleMethod;

    invoke-static {v3, v4, v5}, Lgnu/kawa/functions/Apply;->getArguments([Ljava/lang/Object;ILgnu/mapping/Procedure;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "func":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "func":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    check-cast v2, Lgnu/mapping/Procedure;

    goto :goto_0
.end method

.method public static aref(Lgnu/lists/SimpleVector;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "array":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "k":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "array":Lgnu/lists/SimpleVector;
    return-object v0
.end method

.method public static arrayp(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lgnu/lists/SimpleVector;

    move v0, v1

    .end local v0    # "x":Ljava/lang/Object;
    return v0
.end method

.method public static aset(Lgnu/lists/SimpleVector;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "array":Lgnu/lists/SimpleVector;
    move v1, p1

    .local v1, "k":I
    move-object v2, p2

    .local v2, "obj":Ljava/lang/Object;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 132
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "array":Lgnu/lists/SimpleVector;
    return-object v0
.end method

.method public static boundp(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Lgnu/commonlisp/lang/Symbols;->isBound(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "symbol":Ljava/lang/Object;
    return v0
.end method

.method public static car(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 5
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v1, v0

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    :goto_0
    move-object v0, v1

    .end local v0    # "x":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "x":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    check-cast v1, Lgnu/lists/Pair;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static cdr(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v1, v0

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    :goto_0
    move-object v0, v1

    .end local v0    # "x":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "x":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    check-cast v1, Lgnu/lists/Pair;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static charToString(Ljava/lang/Object;)Lgnu/lists/FString;
    .locals 6

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "ch":Ljava/lang/Object;
    new-instance v1, Lgnu/lists/FString;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    move-object v4, v0

    invoke-static {v4}, Lgnu/commonlisp/lang/CommonLisp;->asChar(Ljava/lang/Object;)C

    move-result v4

    invoke-direct {v2, v3, v4}, Lgnu/lists/FString;-><init>(IC)V

    move-object v0, v1

    .end local v0    # "ch":Ljava/lang/Object;
    return-object v0
.end method

.method public static fillarray(Lgnu/lists/SimpleVector;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "array":Lgnu/lists/SimpleVector;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/lists/SimpleVector;->fill(Ljava/lang/Object;)V

    .line 136
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "array":Lgnu/lists/SimpleVector;
    return-object v0
.end method

.method public static fset(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lgnu/commonlisp/lang/Symbols;->setFunctionBinding(Lgnu/mapping/Environment;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static functionp(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lgnu/mapping/Procedure;

    move v0, v1

    .end local v0    # "x":Ljava/lang/Object;
    return v0
.end method

.method public static get(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v2, v3, v4}, Lgnu/commonlisp/lisp/PrimOps;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "symbol":Lgnu/mapping/Symbol;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "default":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lgnu/mapping/PropertyLocation;->getProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "symbol":Lgnu/mapping/Symbol;
    return-object v0
.end method

.method public static length(Lgnu/lists/Sequence;)I
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "x":Lgnu/lists/Sequence;
    move-object v1, v0

    invoke-interface {v1}, Lgnu/lists/Sequence;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "x":Lgnu/lists/Sequence;
    return v0
.end method

.method public static makeString(ILjava/lang/Object;)Lgnu/lists/FString;
    .locals 7

    .prologue
    .line 143
    move v0, p0

    .local v0, "count":I
    move-object v1, p1

    .local v1, "ch":Ljava/lang/Object;
    new-instance v2, Lgnu/lists/FString;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move v4, v0

    move-object v5, v1

    invoke-static {v5}, Lgnu/commonlisp/lang/CommonLisp;->asChar(Ljava/lang/Object;)C

    move-result v5

    invoke-direct {v3, v4, v5}, Lgnu/lists/FString;-><init>(IC)V

    move-object v0, v2

    .end local v0    # "count":I
    return-object v0
.end method

.method public static plistGet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3, v4}, Lgnu/commonlisp/lisp/PrimOps;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "plist":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "prop":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "default":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lgnu/mapping/PropertyLocation;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "plist":Ljava/lang/Object;
    return-object v0
.end method

.method public static plistMember(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "plist":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "prop":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-static {v2, v3, v4}, Lgnu/mapping/PropertyLocation;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v2, v3, :cond_0

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_0
    move-object v0, v2

    .end local v0    # "plist":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "plist":Ljava/lang/Object;
    :cond_0
    sget-object v2, Lgnu/commonlisp/lisp/PrimOps;->Lit0:Lgnu/mapping/SimpleSymbol;

    goto :goto_0
.end method

.method public static plistPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "plist":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "prop":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lgnu/mapping/PropertyLocation;->plistPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "plist":Ljava/lang/Object;
    return-object v0
.end method

.method public static plistRemprop(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "plist":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "prop":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/mapping/PropertyLocation;->plistRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "plist":Ljava/lang/Object;
    return-object v0
.end method

.method public static put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "property":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lgnu/mapping/PropertyLocation;->putProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Lgnu/commonlisp/lang/Symbols;->getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    return-void
.end method

.method public static setcar(Lgnu/lists/Pair;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "p":Lgnu/lists/Pair;
    move-object v1, p1

    .local v1, "x":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    return-void
.end method

.method public static setcdr(Lgnu/lists/Pair;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "p":Lgnu/lists/Pair;
    move-object v1, p1

    .local v1, "x":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    return-void
.end method

.method public static setplist(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "plist":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/mapping/PropertyLocation;->setPropertyList(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "symbol":Ljava/lang/Object;
    return-object v0
.end method

.method public static stringp(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Ljava/lang/CharSequence;

    move v0, v1

    .end local v0    # "x":Ljava/lang/Object;
    return v0
.end method

.method public static substring(Ljava/lang/CharSequence;Ljava/lang/Object;)Lgnu/lists/FString;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v2, v3, v4}, Lgnu/commonlisp/lisp/PrimOps;->substring(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static substring(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/FString;
    .locals 11

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "str":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "from":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "to":Ljava/lang/Object;
    move-object v3, v2

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v4, :cond_0

    .line 148
    move-object v3, v0

    invoke-static {v3}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v2, v3

    .end local v2    # "to":Ljava/lang/Object;
    :cond_0
    sget-object v3, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 149
    move-object v4, v2

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_1

    .line 150
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v4, v0

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    :cond_1
    sget-object v3, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 151
    move-object v4, v1

    sget-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_2

    .line 152
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v4, v0

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 153
    :cond_2
    new-instance v3, Lgnu/lists/FString;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    move-object v6, v1

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lgnu/lists/FString;-><init>(Ljava/lang/CharSequence;II)V

    move-object v0, v3

    .end local v0    # "str":Ljava/lang/CharSequence;
    return-object v0
.end method

.method public static symbolFunction(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Lgnu/commonlisp/lang/Symbols;->getFunctionBinding(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "symbol":Ljava/lang/Object;
    return-object v0
.end method

.method public static symbolName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Lgnu/commonlisp/lang/Symbols;->getPrintName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "symbol":Ljava/lang/Object;
    return-object v0
.end method

.method public static symbolPlist(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "symbol":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Lgnu/mapping/PropertyLocation;->getPropertyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "symbol":Ljava/lang/Object;
    return-object v0
.end method

.method public static symbolValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "sym":Ljava/lang/Object;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    move-object v2, v0

    invoke-static {v2}, Lgnu/commonlisp/lang/Symbols;->getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "sym":Ljava/lang/Object;
    return-object v0
.end method

.method public static symbolp(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Lgnu/commonlisp/lang/Symbols;->isSymbol(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "x":Ljava/lang/Object;
    return v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v3, :sswitch_data_0

    .line 158
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 5
    :sswitch_0
    move-object v3, v2

    invoke-static {v3}, Lgnu/commonlisp/lisp/PrimOps;->car(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 8
    :sswitch_1
    move-object v3, v2

    invoke-static {v3}, Lgnu/commonlisp/lisp/PrimOps;->cdr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 19
    :sswitch_2
    move-object v3, v2

    invoke-static {v3}, Lgnu/commonlisp/lisp/PrimOps;->boundp(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_0
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_1

    .line 24
    :sswitch_3
    move-object v3, v2

    invoke-static {v3}, Lgnu/commonlisp/lisp/PrimOps;->symbolp(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    :goto_2
    move-object v0, v3

    goto :goto_0

    :cond_1
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_2

    .line 27
    :sswitch_4
    move-object v3, v2

    invoke-static {v3}, Lgnu/commonlisp/lisp/PrimOps;->symbolName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 40
    :sswitch_5
    move-object v3, v2

    invoke-static {v3}, Lgnu/commonlisp/lisp/PrimOps;->symbolPlist(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 73
    :sswitch_6
    move-object v3, v2

    invoke-static {v3}, Lgnu/commonlisp/lisp/PrimOps;->symbolValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 97
    :sswitch_7
    move-object v3, v2

    invoke-static {v3}, Lgnu/commonlisp/lisp/PrimOps;->symbolFunction(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 117
    :sswitch_8
    move-object v3, v2

    :try_start_0
    check-cast v3, Lgnu/lists/Sequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3}, Lgnu/commonlisp/lisp/PrimOps;->length(Lgnu/lists/Sequence;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 120
    :sswitch_9
    move-object v3, v2

    invoke-static {v3}, Lgnu/commonlisp/lisp/PrimOps;->arrayp(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    :goto_3
    move-object v0, v3

    goto :goto_0

    :cond_2
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_3

    .line 140
    :sswitch_a
    move-object v3, v2

    invoke-static {v3}, Lgnu/commonlisp/lisp/PrimOps;->stringp(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    :goto_4
    move-object v0, v3

    goto :goto_0

    :cond_3
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_4

    .line 155
    :sswitch_b
    move-object v3, v2

    invoke-static {v3}, Lgnu/commonlisp/lisp/PrimOps;->charToString(Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 158
    :sswitch_c
    move-object v3, v2

    invoke-static {v3}, Lgnu/commonlisp/lisp/PrimOps;->functionp(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    :goto_5
    move-object v0, v3

    goto/16 :goto_0

    :cond_4
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_5

    .line 117
    :catch_0
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "length"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x12 -> :sswitch_6
        0x14 -> :sswitch_7
        0x17 -> :sswitch_8
        0x18 -> :sswitch_9
        0x1c -> :sswitch_a
        0x20 -> :sswitch_b
        0x21 -> :sswitch_c
    .end sparse-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_0

    .line 146
    :pswitch_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 11
    :pswitch_1
    move-object v4, v2

    :try_start_0
    check-cast v4, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/commonlisp/lisp/PrimOps;->setcar(Lgnu/lists/Pair;Ljava/lang/Object;)V

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v4

    goto :goto_0

    .line 14
    :pswitch_2
    move-object v4, v2

    :try_start_1
    check-cast v4, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/commonlisp/lisp/PrimOps;->setcdr(Lgnu/lists/Pair;Ljava/lang/Object;)V

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v4

    goto :goto_0

    .line 43
    :pswitch_3
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/commonlisp/lisp/PrimOps;->setplist(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 47
    :pswitch_4
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/commonlisp/lisp/PrimOps;->plistGet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 53
    :pswitch_5
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/commonlisp/lisp/PrimOps;->plistRemprop(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 56
    :pswitch_6
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/commonlisp/lisp/PrimOps;->plistMember(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 62
    :pswitch_7
    move-object v4, v2

    :try_start_2
    check-cast v4, Lgnu/mapping/Symbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/commonlisp/lisp/PrimOps;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 80
    :pswitch_8
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/commonlisp/lisp/PrimOps;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v4

    goto :goto_0

    .line 105
    :pswitch_9
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/commonlisp/lisp/PrimOps;->fset(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v4

    goto :goto_0

    .line 123
    :pswitch_a
    move-object v4, v2

    :try_start_3
    check-cast v4, Lgnu/lists/SimpleVector;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v3

    :try_start_4
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v5

    invoke-static {v4, v5}, Lgnu/commonlisp/lisp/PrimOps;->aref(Lgnu/lists/SimpleVector;I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 134
    :pswitch_b
    move-object v4, v2

    :try_start_5
    check-cast v4, Lgnu/lists/SimpleVector;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/commonlisp/lisp/PrimOps;->fillarray(Lgnu/lists/SimpleVector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 143
    :pswitch_c
    move-object v4, v2

    :try_start_6
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v4

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/commonlisp/lisp/PrimOps;->makeString(ILjava/lang/Object;)Lgnu/lists/FString;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 146
    :pswitch_d
    move-object v4, v2

    :try_start_7
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/commonlisp/lisp/PrimOps;->substring(Ljava/lang/CharSequence;Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    .line 11
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "setcar"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 14
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "setcdr"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 62
    :catch_2
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "get"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 124
    :catch_3
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "aref"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 125
    :catch_4
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "aref"

    const/4 v8, 0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 134
    :catch_5
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "fillarray"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 143
    :catch_6
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "make-string"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 146
    :catch_7
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "substring"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v5, :sswitch_data_0

    .line 146
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    :goto_0
    return-object v0

    .line 47
    :sswitch_0
    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lgnu/commonlisp/lisp/PrimOps;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 50
    :sswitch_1
    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lgnu/commonlisp/lisp/PrimOps;->plistPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 62
    :sswitch_2
    move-object v5, v2

    :try_start_0
    check-cast v5, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lgnu/commonlisp/lisp/PrimOps;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 65
    :sswitch_3
    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lgnu/commonlisp/lisp/PrimOps;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v5

    goto :goto_0

    .line 128
    :sswitch_4
    move-object v5, v2

    :try_start_1
    check-cast v5, Lgnu/lists/SimpleVector;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v3

    :try_start_2
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lgnu/commonlisp/lisp/PrimOps;->aset(Lgnu/lists/SimpleVector;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 146
    :sswitch_5
    move-object v5, v2

    :try_start_3
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v6, v3

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lgnu/commonlisp/lisp/PrimOps;->substring(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 62
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "get"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 128
    :catch_1
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "aset"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 129
    :catch_2
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "aset"

    const/4 v9, 0x2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 146
    :catch_3
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "substring"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 4294967295
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xc -> :sswitch_1
        0xf -> :sswitch_2
        0x11 -> :sswitch_3
        0x1a -> :sswitch_4
        0x1e -> :sswitch_5
    .end sparse-switch
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v5, 0x16

    if-ne v4, v5, :cond_0

    .line 110
    move-object v4, v2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v2

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    move v5, v3

    new-array v5, v5, [Ljava/lang/Object;

    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v6, v3

    if-gez v6, :cond_1

    invoke-static {v4, v5}, Lgnu/commonlisp/lisp/PrimOps;->apply(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_1
    return-object v0

    .line 4294967295
    .line 110
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    :cond_1
    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move v7, v3

    move-object v8, v2

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 9

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v4, :sswitch_data_0

    .line 5
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 158
    :goto_0
    return v0

    :sswitch_0
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 155
    :sswitch_1
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 140
    :sswitch_2
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 120
    :sswitch_3
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 117
    :sswitch_4
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Lgnu/lists/Sequence;

    if-nez v6, :cond_0

    const v6, -0xbffff

    move v0, v6

    goto :goto_0

    :cond_0
    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 97
    :sswitch_5
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 73
    :sswitch_6
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 40
    :sswitch_7
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0

    .line 27
    :sswitch_8
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0

    .line 24
    :sswitch_9
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0

    .line 19
    :sswitch_a
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0

    .line 8
    :sswitch_b
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0

    .line 5
    :sswitch_c
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0

    .line 4294967295
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_b
        0x5 -> :sswitch_a
        0x6 -> :sswitch_9
        0x7 -> :sswitch_8
        0x8 -> :sswitch_7
        0x12 -> :sswitch_6
        0x14 -> :sswitch_5
        0x17 -> :sswitch_4
        0x18 -> :sswitch_3
        0x1c -> :sswitch_2
        0x20 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 11

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v5, :pswitch_data_0

    .line 11
    :pswitch_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    .line 146
    :goto_0
    return v0

    :pswitch_1
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :cond_0
    const v7, -0xbffff

    move v0, v7

    goto :goto_0

    .line 143
    :pswitch_2
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 134
    :pswitch_3
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/lists/SimpleVector;

    if-nez v7, :cond_1

    const v7, -0xbffff

    move v0, v7

    goto :goto_0

    :cond_1
    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 123
    :pswitch_4
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/lists/SimpleVector;

    if-nez v7, :cond_2

    const v7, -0xbffff

    move v0, v7

    goto :goto_0

    :cond_2
    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 105
    :pswitch_5
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 80
    :pswitch_6
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 62
    :pswitch_7
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/mapping/Symbol;

    if-nez v7, :cond_3

    const v7, -0xbffff

    move v0, v7

    goto/16 :goto_0

    :cond_3
    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 56
    :pswitch_8
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 53
    :pswitch_9
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 47
    :pswitch_a
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 43
    :pswitch_b
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 14
    :pswitch_c
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/lists/Pair;

    if-nez v7, :cond_4

    const v7, -0xbffff

    move v0, v7

    goto/16 :goto_0

    :cond_4
    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 11
    :pswitch_d
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/lists/Pair;

    if-nez v7, :cond_5

    const v7, -0xbffff

    move v0, v7

    goto/16 :goto_0

    :cond_5
    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v1

    iget v6, v6, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v6, :sswitch_data_0

    .line 47
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    .line 146
    :goto_0
    return v0

    :sswitch_0
    move-object v6, v5

    move-object v7, v2

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_0

    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    :cond_0
    const v8, -0xbffff

    move v0, v8

    goto :goto_0

    .line 128
    :sswitch_1
    move-object v6, v5

    move-object v7, v2

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/lists/SimpleVector;

    if-nez v8, :cond_1

    const v8, -0xbffff

    move v0, v8

    goto :goto_0

    :cond_1
    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 65
    :sswitch_2
    move-object v6, v5

    move-object v7, v2

    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 62
    :sswitch_3
    move-object v6, v5

    move-object v7, v2

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/mapping/Symbol;

    if-nez v8, :cond_2

    const v8, -0xbffff

    move v0, v8

    goto :goto_0

    :cond_2
    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 50
    :sswitch_4
    move-object v6, v5

    move-object v7, v2

    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 47
    :sswitch_5
    move-object v6, v5

    move-object v7, v2

    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 4294967295
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0xc -> :sswitch_4
        0xf -> :sswitch_3
        0x11 -> :sswitch_2
        0x1a -> :sswitch_1
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v5, 0x16

    if-ne v4, v5, :cond_0

    .line 110
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    return v0

    .line 4294967295
    .line 110
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 5
    move-object v0, p0

    .local v0, "this":Lgnu/commonlisp/lisp/PrimOps;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 8
    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
