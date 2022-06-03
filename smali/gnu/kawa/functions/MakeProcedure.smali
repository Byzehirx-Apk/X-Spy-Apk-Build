.class public Lgnu/kawa/functions/MakeProcedure;
.super Lgnu/mapping/ProcedureN;
.source "MakeProcedure.java"


# static fields
.field public static final makeProcedure:Lgnu/kawa/functions/MakeProcedure;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 7
    new-instance v0, Lgnu/kawa/functions/MakeProcedure;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "make-procedure"

    invoke-direct {v1, v2}, Lgnu/kawa/functions/MakeProcedure;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/functions/MakeProcedure;->makeProcedure:Lgnu/kawa/functions/MakeProcedure;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/MakeProcedure;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 13
    move-object v2, v0

    sget-object v3, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v4, "gnu.kawa.functions.CompileMisc:validateApplyMakeProcedure"

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/functions/MakeProcedure;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public static makeProcedure$V([Ljava/lang/Object;)Lgnu/expr/GenericProc;
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "args":[Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Lgnu/expr/GenericProc;->make([Ljava/lang/Object;)Lgnu/expr/GenericProc;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/MakeProcedure;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, v1

    invoke-static {v2}, Lgnu/expr/GenericProc;->make([Ljava/lang/Object;)Lgnu/expr/GenericProc;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/functions/MakeProcedure;
    return-object v0
.end method
