.class public Lgnu/kawa/functions/SetNamedPart;
.super Lgnu/mapping/Procedure3;
.source "SetNamedPart.java"

# interfaces
.implements Lgnu/mapping/HasSetter;


# static fields
.field public static final setNamedPart:Lgnu/kawa/functions/SetNamedPart;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 10
    new-instance v0, Lgnu/kawa/functions/SetNamedPart;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lgnu/kawa/functions/SetNamedPart;-><init>()V

    sput-object v0, Lgnu/kawa/functions/SetNamedPart;->setNamedPart:Lgnu/kawa/functions/SetNamedPart;

    .line 12
    sget-object v0, Lgnu/kawa/functions/SetNamedPart;->setNamedPart:Lgnu/kawa/functions/SetNamedPart;

    const-string/jumbo v1, "setNamedPart"

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/SetNamedPart;->setName(Ljava/lang/String;)V

    .line 13
    sget-object v0, Lgnu/kawa/functions/SetNamedPart;->setNamedPart:Lgnu/kawa/functions/SetNamedPart;

    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v2, "gnu.kawa.functions.CompileNamedPart:validateSetNamedPart"

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/SetNamedPart;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/SetNamedPart;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure3;-><init>()V

    return-void
.end method


# virtual methods
.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/SetNamedPart;
    move-object v1, p1

    .local v1, "container":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "part":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;
    move-object v8, v1

    instance-of v8, v8, Lgnu/mapping/Namespace;

    if-eqz v8, :cond_0

    .line 25
    move-object v8, v1

    check-cast v8, Lgnu/mapping/Namespace;

    move-object v4, v8

    .line 26
    .local v4, "ns":Lgnu/mapping/Namespace;
    move-object v8, v4

    invoke-virtual {v8}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 27
    .local v5, "uri":Ljava/lang/String;
    move-object v8, v5

    const-string/jumbo v9, "class:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 28
    move-object v8, v5

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v8

    move-object v1, v8

    .line 37
    .end local v1    # "container":Ljava/lang/Object;
    .end local v4    # "ns":Lgnu/mapping/Namespace;
    .end local v5    # "uri":Ljava/lang/String;
    :cond_0
    move-object v8, v1

    instance-of v8, v8, Ljava/lang/Class;

    if-eqz v8, :cond_1

    .line 38
    move-object v8, v1

    check-cast v8, Ljava/lang/Class;

    invoke-static {v8}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v8

    check-cast v8, Lgnu/bytecode/ClassType;

    move-object v1, v8

    .line 39
    :cond_1
    move-object v8, v1

    instance-of v8, v8, Lgnu/bytecode/ClassType;

    if-eqz v8, :cond_3

    .line 43
    move-object v8, v1

    move-object v9, v2

    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v3

    invoke-static {v8, v9, v10}, Lgnu/kawa/reflect/SlotSet;->setStaticField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    sget-object v8, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    .line 53
    .end local v0    # "this":Lgnu/kawa/functions/SetNamedPart;
    :goto_0
    return-object v0

    .line 31
    .restart local v0    # "this":Lgnu/kawa/functions/SetNamedPart;
    .restart local v1    # "container":Ljava/lang/Object;
    .restart local v4    # "ns":Lgnu/mapping/Namespace;
    .restart local v5    # "uri":Ljava/lang/String;
    :cond_2
    move-object v8, v4

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v8

    move-object v6, v8

    .line 32
    .local v6, "sym":Lgnu/mapping/Symbol;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v8

    move-object v7, v8

    .line 33
    .local v7, "env":Lgnu/mapping/Environment;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v8

    move-object v9, v6

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 34
    sget-object v8, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v8

    goto :goto_0

    .line 46
    .end local v1    # "container":Ljava/lang/Object;
    .end local v4    # "ns":Lgnu/mapping/Namespace;
    .end local v5    # "uri":Ljava/lang/String;
    .end local v6    # "sym":Lgnu/mapping/Symbol;
    .end local v7    # "env":Lgnu/mapping/Environment;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 52
    :cond_3
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v3

    invoke-static {v8, v9, v10}, Lgnu/kawa/reflect/SlotSet;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    sget-object v8, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v8

    goto :goto_0
.end method
