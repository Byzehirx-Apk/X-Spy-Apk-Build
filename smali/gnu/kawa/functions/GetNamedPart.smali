.class public Lgnu/kawa/functions/GetNamedPart;
.super Lgnu/mapping/Procedure2;
.source "GetNamedPart.java"

# interfaces
.implements Lgnu/mapping/HasSetter;


# static fields
.field public static final CAST_METHOD_NAME:Ljava/lang/String; = "@"

.field public static final CLASSTYPE_FOR:Ljava/lang/String; = "<>"

.field public static final INSTANCEOF_METHOD_NAME:Ljava/lang/String; = "instance?"

.field public static final getNamedPart:Lgnu/kawa/functions/GetNamedPart;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 13
    new-instance v0, Lgnu/kawa/functions/GetNamedPart;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lgnu/kawa/functions/GetNamedPart;-><init>()V

    sput-object v0, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    .line 15
    sget-object v0, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v2, "gnu.kawa.functions.CompileNamedPart:validateGetNamedPart"

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/GetNamedPart;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetNamedPart;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static getMemberPart(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "container":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v3, v4}, Lgnu/kawa/reflect/SlotGet;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .line 124
    .end local v0    # "container":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 116
    .restart local v0    # "container":Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 120
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ClassType;

    move-object v4, v1

    invoke-static {v4}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v3

    move-object v2, v3

    .line 123
    .local v2, "methods":Lgnu/mapping/MethodProc;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 124
    new-instance v3, Lgnu/kawa/functions/NamedPart;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-object v6, v1

    const/16 v7, 0x4d

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/kawa/functions/NamedPart;-><init>(Ljava/lang/Object;Ljava/lang/String;CLgnu/mapping/MethodProc;)V

    move-object v0, v3

    goto :goto_0

    .line 125
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no part \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getNamedPart(Ljava/lang/Object;Lgnu/mapping/Symbol;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "container":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "part":Lgnu/mapping/Symbol;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 89
    .local v2, "name":Ljava/lang/String;
    move-object v4, v0

    instance-of v4, v4, Lgnu/mapping/HasNamedParts;

    if-eqz v4, :cond_0

    .line 90
    move-object v4, v0

    check-cast v4, Lgnu/mapping/HasNamedParts;

    move-object v5, v2

    invoke-interface {v4, v5}, Lgnu/mapping/HasNamedParts;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .line 106
    .end local v0    # "container":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 91
    .restart local v0    # "container":Ljava/lang/Object;
    :cond_0
    move-object v4, v0

    instance-of v4, v4, Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 92
    move-object v4, v0

    check-cast v4, Ljava/lang/Class;

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    move-object v0, v4

    .line 93
    .end local v0    # "container":Ljava/lang/Object;
    :cond_1
    move-object v4, v0

    instance-of v4, v4, Ljava/lang/Package;

    if-eqz v4, :cond_2

    .line 97
    move-object v4, v0

    :try_start_0
    check-cast v4, Ljava/lang/Package;

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 98
    .local v3, "pname":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 100
    .end local v3    # "pname":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 104
    :cond_2
    move-object v4, v0

    instance-of v4, v4, Lgnu/bytecode/Type;

    if-eqz v4, :cond_3

    .line 105
    move-object v4, v0

    check-cast v4, Lgnu/bytecode/Type;

    move-object v5, v2

    invoke-static {v4, v5}, Lgnu/kawa/functions/GetNamedPart;->getTypePart(Lgnu/bytecode/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 106
    :cond_3
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/kawa/functions/GetNamedPart;->getMemberPart(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public static getTypePart(Lgnu/bytecode/Type;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "type":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v1

    const-string/jumbo v4, "<>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    move-object v3, v0

    move-object v0, v3

    .line 82
    .end local v0    # "type":Lgnu/bytecode/Type;
    :goto_0
    return-object v0

    .line 56
    .restart local v0    # "type":Lgnu/bytecode/Type;
    :cond_0
    move-object v3, v0

    instance-of v3, v3, Lgnu/bytecode/ObjectType;

    if-eqz v3, :cond_5

    .line 58
    move-object v3, v1

    const-string/jumbo v4, "instance?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    new-instance v3, Lgnu/kawa/functions/NamedPart;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    const/16 v7, 0x49

    invoke-direct {v4, v5, v6, v7}, Lgnu/kawa/functions/NamedPart;-><init>(Ljava/lang/Object;Ljava/lang/Object;C)V

    move-object v0, v3

    goto :goto_0

    .line 60
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    new-instance v3, Lgnu/kawa/functions/NamedPart;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    const/16 v7, 0x43

    invoke-direct {v4, v5, v6, v7}, Lgnu/kawa/functions/NamedPart;-><init>(Ljava/lang/Object;Ljava/lang/Object;C)V

    move-object v0, v3

    goto :goto_0

    .line 62
    :cond_2
    move-object v3, v1

    const-string/jumbo v4, "new"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 63
    new-instance v3, Lgnu/kawa/functions/NamedPart;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    const/16 v7, 0x4e

    invoke-direct {v4, v5, v6, v7}, Lgnu/kawa/functions/NamedPart;-><init>(Ljava/lang/Object;Ljava/lang/Object;C)V

    move-object v0, v3

    goto :goto_0

    .line 64
    :cond_3
    move-object v3, v1

    const-string/jumbo v4, ".length"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_5

    move-object v3, v0

    instance-of v3, v3, Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_5

    .line 67
    :cond_4
    new-instance v3, Lgnu/kawa/functions/NamedPart;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    const/16 v7, 0x44

    invoke-direct {v4, v5, v6, v7}, Lgnu/kawa/functions/NamedPart;-><init>(Ljava/lang/Object;Ljava/lang/Object;C)V

    move-object v0, v3

    goto :goto_0

    .line 70
    :cond_5
    move-object v3, v0

    instance-of v3, v3, Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_6

    .line 74
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v3, v4}, Lgnu/kawa/reflect/SlotGet;->staticField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 76
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 80
    sget-object v3, Lgnu/kawa/reflect/ClassMethods;->classMethods:Lgnu/kawa/reflect/ClassMethods;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/MethodProc;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 82
    :cond_6
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/kawa/functions/GetNamedPart;->getMemberPart(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetNamedPart;
    move-object v1, p1

    .local v1, "container":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "part":Ljava/lang/Object;
    move-object v6, v1

    instance-of v6, v6, Lgnu/mapping/Values;

    if-eqz v6, :cond_1

    .line 34
    move-object v6, v1

    check-cast v6, Lgnu/mapping/Values;

    invoke-virtual {v6}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 35
    .local v3, "values":[Ljava/lang/Object;
    new-instance v6, Lgnu/mapping/Values;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lgnu/mapping/Values;-><init>()V

    move-object v4, v6

    .line 36
    .local v4, "result":Lgnu/mapping/Values;
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move-object v7, v3

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 38
    move-object v6, v0

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/kawa/functions/GetNamedPart;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v4

    invoke-static {v6, v7}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 36
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 40
    :cond_0
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/mapping/Values;->canonicalize()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .line 47
    .end local v0    # "this":Lgnu/kawa/functions/GetNamedPart;
    .end local v3    # "values":[Ljava/lang/Object;
    .end local v4    # "result":Lgnu/mapping/Values;
    .end local v5    # "i":I
    :goto_1
    return-object v0

    .line 43
    .restart local v0    # "this":Lgnu/kawa/functions/GetNamedPart;
    :cond_1
    move-object v6, v2

    instance-of v6, v6, Lgnu/mapping/Symbol;

    if-eqz v6, :cond_2

    .line 44
    move-object v6, v2

    check-cast v6, Lgnu/mapping/Symbol;

    move-object v3, v6

    .line 47
    .local v3, "sym":Lgnu/mapping/Symbol;
    :goto_2
    move-object v6, v1

    move-object v7, v3

    invoke-static {v6, v7}, Lgnu/kawa/functions/GetNamedPart;->getNamedPart(Ljava/lang/Object;Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    goto :goto_1

    .line 46
    .end local v3    # "sym":Lgnu/mapping/Symbol;
    :cond_2
    sget-object v6, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v6

    move-object v3, v6

    .restart local v3    # "sym":Lgnu/mapping/Symbol;
    goto :goto_2
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/GetNamedPart;
    sget-object v1, Lgnu/kawa/functions/SetNamedPart;->setNamedPart:Lgnu/kawa/functions/SetNamedPart;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/functions/GetNamedPart;
    return-object v0
.end method
