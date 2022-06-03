.class public Lkawa/lang/AutoloadProcedure;
.super Lgnu/mapping/Procedure;
.source "AutoloadProcedure.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final classModuleBody:Ljava/lang/Class;


# instance fields
.field className:Ljava/lang/String;

.field language:Lgnu/expr/Language;

.field loaded:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lgnu/expr/ModuleBody;

    sput-object v0, Lkawa/lang/AutoloadProcedure;->classModuleBody:Ljava/lang/Class;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadProcedure;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadProcedure;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "className":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lgnu/mapping/Procedure;-><init>(Ljava/lang/String;)V

    .line 35
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkawa/lang/AutoloadProcedure;->className:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)V
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadProcedure;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "className":Ljava/lang/String;
    move-object v3, p3

    .local v3, "language":Lgnu/expr/Language;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/mapping/Procedure;-><init>(Ljava/lang/String;)V

    .line 41
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lkawa/lang/AutoloadProcedure;->className:Ljava/lang/String;

    .line 42
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lkawa/lang/AutoloadProcedure;->language:Lgnu/expr/Language;

    .line 43
    return-void
.end method

.method private throw_error(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadProcedure;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    .line 69
    move-object v3, v0

    invoke-virtual {v3}, Lkawa/lang/AutoloadProcedure;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 70
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lkawa/lang/AutoloadProcedure;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " while autoloading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    if-nez v6, :cond_0

    const-string/jumbo v6, ""

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadProcedure;
    move-object v1, v0

    invoke-virtual {v1}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lkawa/lang/AutoloadProcedure;
    return-object v0
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadProcedure;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lkawa/lang/AutoloadProcedure;
    return-object v0
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadProcedure;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lkawa/lang/AutoloadProcedure;
    return-object v0
.end method

.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadProcedure;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lkawa/lang/AutoloadProcedure;
    return-object v0
.end method

.method public apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadProcedure;
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "arg3":Ljava/lang/Object;
    move-object v4, p4

    .local v4, "arg4":Ljava/lang/Object;
    move-object v5, v0

    invoke-virtual {v5}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lkawa/lang/AutoloadProcedure;
    return-object v0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadProcedure;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    if-nez v2, :cond_0

    .line 197
    move-object v2, v0

    invoke-virtual {v2}, Lkawa/lang/AutoloadProcedure;->load()V

    .line 198
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    instance-of v2, v2, Lkawa/lang/AutoloadProcedure;

    if-eqz v2, :cond_1

    .line 199
    new-instance v2, Ljava/lang/InternalError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "circularity in autoload of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lkawa/lang/AutoloadProcedure;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lkawa/lang/AutoloadProcedure;
    return-object v0
.end method

.method public getLoaded()Lgnu/mapping/Procedure;
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadProcedure;
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    if-nez v1, :cond_0

    .line 159
    move-object v1, v0

    invoke-virtual {v1}, Lkawa/lang/AutoloadProcedure;->load()V

    .line 160
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    move-object v0, v1

    .end local v0    # "this":Lkawa/lang/AutoloadProcedure;
    return-object v0
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadProcedure;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-super {v4, v5, v6}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 228
    .local v3, "value":Ljava/lang/Object;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 229
    move-object v4, v3

    move-object v0, v4

    .line 230
    .end local v0    # "this":Lkawa/lang/AutoloadProcedure;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lkawa/lang/AutoloadProcedure;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadProcedure;
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    if-nez v1, :cond_0

    .line 206
    move-object v1, v0

    invoke-virtual {v1}, Lkawa/lang/AutoloadProcedure;->load()V

    .line 207
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    instance-of v1, v1, Lgnu/mapping/HasSetter;

    if-eqz v1, :cond_1

    .line 208
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    invoke-virtual {v1}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v1

    move-object v0, v1

    .line 209
    .end local v0    # "this":Lkawa/lang/AutoloadProcedure;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lkawa/lang/AutoloadProcedure;
    :cond_1
    move-object v1, v0

    invoke-super {v1}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method load()V
    .locals 14

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadProcedure;
    move-object v9, v0

    invoke-virtual {v9}, Lkawa/lang/AutoloadProcedure;->getSymbol()Ljava/lang/Object;

    move-result-object v9

    move-object v1, v9

    .line 89
    .local v1, "name":Ljava/lang/Object;
    move-object v9, v0

    iget-object v9, v9, Lkawa/lang/AutoloadProcedure;->language:Lgnu/expr/Language;

    move-object v2, v9

    .line 90
    .local v2, "lang":Lgnu/expr/Language;
    move-object v9, v2

    if-nez v9, :cond_0

    .line 91
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v9

    move-object v2, v9

    .line 92
    :cond_0
    move-object v9, v2

    invoke-virtual {v9}, Lgnu/expr/Language;->getLangEnvironment()Lgnu/mapping/Environment;

    move-result-object v9

    move-object v3, v9

    .line 94
    .local v3, "env":Lgnu/mapping/Environment;
    move-object v9, v1

    instance-of v9, v9, Lgnu/mapping/Symbol;

    if-eqz v9, :cond_6

    move-object v9, v1

    check-cast v9, Lgnu/mapping/Symbol;

    :goto_0
    move-object v4, v9

    .line 98
    .local v4, "sym":Lgnu/mapping/Symbol;
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lkawa/lang/AutoloadProcedure;->className:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    move-object v5, v9

    .line 99
    .local v5, "procClass":Ljava/lang/Class;
    sget-object v9, Lkawa/lang/AutoloadProcedure;->classModuleBody:Ljava/lang/Class;

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 101
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v9

    move-object v6, v9

    .line 102
    .local v6, "context":Lgnu/expr/ModuleContext;
    move-object v9, v6

    move-object v10, v5

    invoke-virtual {v9, v10}, Lgnu/expr/ModuleContext;->searchInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v9

    move-object v7, v9

    .line 103
    .local v7, "mod":Ljava/lang/Object;
    move-object v9, v7

    if-nez v9, :cond_1

    .line 107
    move-object v9, v5

    :try_start_1
    const-string/jumbo v10, "$instance"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v9

    move-object v7, v9

    .line 113
    .line 114
    :goto_1
    move-object v9, v7

    move-object v10, v2

    move-object v11, v3

    :try_start_2
    invoke-static {v9, v10, v11}, Lgnu/kawa/reflect/ClassMemberLocation;->defineAll(Ljava/lang/Object;Lgnu/expr/Language;Lgnu/mapping/Environment;)V

    .line 115
    move-object v9, v7

    instance-of v9, v9, Lgnu/expr/ModuleBody;

    if-eqz v9, :cond_1

    .line 116
    move-object v9, v7

    check-cast v9, Lgnu/expr/ModuleBody;

    invoke-virtual {v9}, Lgnu/expr/ModuleBody;->run()V

    .line 119
    :cond_1
    move-object v9, v3

    move-object v10, v4

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lgnu/mapping/Environment;->getFunction(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    .line 120
    .local v8, "value":Ljava/lang/Object;
    move-object v9, v8

    if-eqz v9, :cond_2

    move-object v9, v8

    instance-of v9, v9, Lgnu/mapping/Procedure;

    if-nez v9, :cond_3

    .line 122
    :cond_2
    move-object v9, v0

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "invalid ModuleBody class - does not define "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lkawa/lang/AutoloadProcedure;->throw_error(Ljava/lang/String;)V

    .line 124
    :cond_3
    move-object v9, v0

    move-object v10, v8

    check-cast v10, Lgnu/mapping/Procedure;

    iput-object v10, v9, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    .line 125
    .line 145
    .end local v6    # "context":Lgnu/expr/ModuleContext;
    .end local v7    # "mod":Ljava/lang/Object;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_4
    :goto_2
    move-object v9, v1

    if-eqz v9, :cond_5

    move-object v9, v0

    iget-object v9, v9, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    invoke-virtual {v9}, Lgnu/mapping/Procedure;->getSymbol()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    .line 146
    move-object v9, v0

    iget-object v9, v9, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    move-object v10, v1

    invoke-virtual {v9, v10}, Lgnu/mapping/Procedure;->setSymbol(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    .line 153
    .line 154
    .end local v5    # "procClass":Ljava/lang/Class;
    :cond_5
    :goto_3
    return-void

    .line 94
    .end local v4    # "sym":Lgnu/mapping/Symbol;
    :cond_6
    move-object v9, v3

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v9

    goto/16 :goto_0

    .line 109
    .restart local v4    # "sym":Lgnu/mapping/Symbol;
    .restart local v5    # "procClass":Ljava/lang/Class;
    .restart local v6    # "context":Lgnu/expr/ModuleContext;
    .restart local v7    # "mod":Ljava/lang/Object;
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 112
    .local v8, "ex":Ljava/lang/NoSuchFieldException;
    move-object v9, v5

    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    goto :goto_1

    .line 128
    .end local v6    # "context":Lgnu/expr/ModuleContext;
    .end local v7    # "mod":Ljava/lang/Object;
    .end local v8    # "ex":Ljava/lang/NoSuchFieldException;
    :cond_7
    move-object v9, v0

    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/Procedure;

    iput-object v10, v9, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    .line 129
    move-object v9, v0

    iget-object v9, v9, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    move-object v10, v0

    if-ne v9, v10, :cond_8

    .line 130
    move-object v9, v0

    const-string/jumbo v10, "circularity detected"

    invoke-direct {v9, v10}, Lkawa/lang/AutoloadProcedure;->throw_error(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4

    .line 131
    :cond_8
    move-object v9, v1

    if-eqz v9, :cond_4

    .line 135
    move-object v9, v2

    :try_start_4
    invoke-virtual {v9}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v9

    if-eqz v9, :cond_9

    sget-object v9, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    :goto_4
    move-object v6, v9

    .line 138
    .local v6, "property":Ljava/lang/Object;
    move-object v9, v3

    move-object v10, v4

    move-object v11, v6

    move-object v12, v0

    iget-object v12, v12, Lkawa/lang/AutoloadProcedure;->loaded:Lgnu/mapping/Procedure;

    invoke-virtual {v9, v10, v11, v12}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    .line 142
    goto :goto_2

    .line 135
    .end local v6    # "property":Ljava/lang/Object;
    :cond_9
    const/4 v9, 0x0

    goto :goto_4

    .line 140
    :catch_1
    move-exception v9

    move-object v6, v9

    goto :goto_2

    .line 148
    .end local v5    # "procClass":Ljava/lang/Class;
    :catch_2
    move-exception v9

    move-object v5, v9

    .line 149
    .local v5, "ex":Ljava/lang/ClassNotFoundException;
    move-object v9, v0

    const-string/jumbo v10, "failed to find class "

    invoke-direct {v9, v10}, Lkawa/lang/AutoloadProcedure;->throw_error(Ljava/lang/String;)V

    .line 153
    goto :goto_3

    .line 150
    .end local v5    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v9

    move-object v5, v9

    .line 151
    .local v5, "ex":Ljava/lang/InstantiationException;
    move-object v9, v0

    const-string/jumbo v10, "failed to instantiate class "

    invoke-direct {v9, v10}, Lkawa/lang/AutoloadProcedure;->throw_error(Ljava/lang/String;)V

    .line 153
    goto :goto_3

    .line 152
    .end local v5    # "ex":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v9

    move-object v5, v9

    .line 153
    .local v5, "ex":Ljava/lang/IllegalAccessException;
    move-object v9, v0

    const-string/jumbo v10, "illegal access in class "

    invoke-direct {v9, v10}, Lkawa/lang/AutoloadProcedure;->throw_error(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadProcedure;
    move-object v1, v0

    invoke-virtual {v1}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lkawa/lang/AutoloadProcedure;
    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadProcedure;
    move-object v1, p1

    .local v1, "ps":Ljava/io/PrintWriter;
    move-object v3, v1

    const-string/jumbo v4, "#<procedure "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    move-object v3, v0

    invoke-virtual {v3}, Lkawa/lang/AutoloadProcedure;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 49
    .local v2, "name":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 51
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    :cond_0
    move-object v3, v1

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 64
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadProcedure;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lkawa/lang/AutoloadProcedure;->setName(Ljava/lang/String;)V

    .line 222
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lkawa/lang/AutoloadProcedure;->className:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lkawa/lang/AutoloadProcedure;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lkawa/lang/AutoloadProcedure;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 215
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/AutoloadProcedure;->className:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 216
    return-void
.end method
