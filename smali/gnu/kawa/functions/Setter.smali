.class public Lgnu/kawa/functions/Setter;
.super Lgnu/mapping/Procedure1;
.source "Setter.java"

# interfaces
.implements Lgnu/mapping/HasSetter;


# static fields
.field public static final setter:Lgnu/kawa/functions/Setter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 12
    new-instance v0, Lgnu/kawa/functions/Setter;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lgnu/kawa/functions/Setter;-><init>()V

    sput-object v0, Lgnu/kawa/functions/Setter;->setter:Lgnu/kawa/functions/Setter;

    .line 14
    sget-object v0, Lgnu/kawa/functions/Setter;->setter:Lgnu/kawa/functions/Setter;

    const-string/jumbo v1, "setter"

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/Setter;->setName(Ljava/lang/String;)V

    .line 15
    sget-object v0, Lgnu/kawa/functions/Setter;->setter:Lgnu/kawa/functions/Setter;

    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v2, "gnu.kawa.functions.CompilationHelpers:validateSetter"

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/Setter;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/Setter;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method

.method public static setter(Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "arg":Lgnu/mapping/Procedure;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "arg":Lgnu/mapping/Procedure;
    return-object v0
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/Setter;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lgnu/mapping/Procedure;

    if-nez v3, :cond_1

    .line 29
    move-object v3, v1

    instance-of v3, v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 30
    new-instance v3, Lgnu/kawa/functions/SetList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    check-cast v5, Ljava/util/List;

    invoke-direct {v4, v5}, Lgnu/kawa/functions/SetList;-><init>(Ljava/util/List;)V

    move-object v0, v3

    .line 39
    .end local v0    # "this":Lgnu/kawa/functions/Setter;
    :goto_0
    return-object v0

    .line 35
    .restart local v0    # "this":Lgnu/kawa/functions/Setter;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 36
    .local v2, "cl":Ljava/lang/Class;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    new-instance v3, Lgnu/kawa/functions/SetArray;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lgnu/kawa/functions/SetArray;-><init>(Ljava/lang/Object;Lgnu/expr/Language;)V

    move-object v0, v3

    goto :goto_0

    .line 39
    .end local v2    # "cl":Ljava/lang/Class;
    :cond_1
    move-object v3, v1

    check-cast v3, Lgnu/mapping/Procedure;

    invoke-virtual {v3}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public set1(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/Setter;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, Lgnu/mapping/Procedure;

    move-object v4, v2

    check-cast v4, Lgnu/mapping/Procedure;

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->setSetter(Lgnu/mapping/Procedure;)V

    .line 45
    return-void
.end method
