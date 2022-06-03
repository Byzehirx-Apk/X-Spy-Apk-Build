.class public Lgnu/expr/ApplicationMainSupport;
.super Ljava/lang/Object;
.source "ApplicationMainSupport.java"


# static fields
.field public static commandLineArgArray:[Ljava/lang/String;

.field public static commandLineArguments:Lgnu/lists/FVector;

.field public static processCommandLinePropertyAssignments:Z

.field static propertyFields:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 109
    const/16 v0, 0xa

    new-array v0, v0, [[Ljava/lang/String;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "out:doctype-system"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.xml.XMLPrinter"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "doctypeSystem"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "out:doctype-public"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.xml.XMLPrinter"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "doctypePublic"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "out:base"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.kawa.functions.DisplayFormat"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "outBase"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x3

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "out:radix"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.kawa.functions.DisplayFormat"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "outRadix"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x4

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "out:line-length"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.text.PrettyWriter"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "lineLengthLoc"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "out:right-margin"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.text.PrettyWriter"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "lineLengthLoc"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x6

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "out:miser-width"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.text.PrettyWriter"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "miserWidthLoc"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x7

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "out:xml-indent"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.xml.XMLPrinter"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "indentLoc"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x8

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "display:toolkit"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "gnu.kawa.models.Display"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "myDisplay"

    aput-object v6, v4, v5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x9

    const/4 v3, 0x0

    aput-object v3, v1, v2

    sput-object v0, Lgnu/expr/ApplicationMainSupport;->propertyFields:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    .local v0, "this":Lgnu/expr/ApplicationMainSupport;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processArgs([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "args":[Ljava/lang/String;
    const/4 v2, 0x0

    move v1, v2

    .line 35
    .local v1, "iarg":I
    sget-boolean v2, Lgnu/expr/ApplicationMainSupport;->processCommandLinePropertyAssignments:Z

    if-eqz v2, :cond_0

    .line 37
    :goto_0
    move v2, v1

    move-object v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_0

    move-object v2, v0

    move v3, v1

    aget-object v2, v2, v3

    invoke-static {v2}, Lgnu/expr/ApplicationMainSupport;->processSetProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lgnu/expr/ApplicationMainSupport;->setArgs([Ljava/lang/String;I)V

    .line 41
    return-void
.end method

.method public static processSetProperties()V
    .locals 4

    .prologue
    .line 18
    sget-object v2, Lgnu/expr/ApplicationMainSupport;->commandLineArgArray:[Ljava/lang/String;

    move-object v0, v2

    .line 19
    .local v0, "args":[Ljava/lang/String;
    move-object v2, v0

    if-nez v2, :cond_1

    .line 20
    const/4 v2, 0x1

    sput-boolean v2, Lgnu/expr/ApplicationMainSupport;->processCommandLinePropertyAssignments:Z

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    .line 24
    .local v1, "iarg":I
    :goto_1
    move v2, v1

    move-object v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_2

    move-object v2, v0

    move v3, v1

    aget-object v2, v2, v3

    invoke-static {v2}, Lgnu/expr/ApplicationMainSupport;->processSetProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 26
    :cond_2
    move v2, v1

    if-eqz v2, :cond_0

    .line 27
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lgnu/expr/ApplicationMainSupport;->setArgs([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static processSetProperty(Ljava/lang/String;)Z
    .locals 15

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "arg":Ljava/lang/String;
    move-object v10, v0

    const/16 v11, 0x3d

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    move v1, v10

    .line 67
    .local v1, "ci":I
    move v10, v1

    if-gtz v10, :cond_0

    .line 68
    const/4 v10, 0x0

    move v0, v10

    .line 101
    .end local v0    # "arg":Ljava/lang/String;
    :goto_0
    return v0

    .line 69
    .restart local v0    # "arg":Ljava/lang/String;
    :cond_0
    move-object v10, v0

    const/4 v11, 0x0

    move v12, v1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 70
    .local v2, "key":Ljava/lang/String;
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 71
    .local v3, "value":Ljava/lang/String;
    const/4 v10, 0x0

    move v4, v10

    .line 73
    .local v4, "i":I
    :goto_1
    sget-object v10, Lgnu/expr/ApplicationMainSupport;->propertyFields:[[Ljava/lang/String;

    move v11, v4

    aget-object v10, v10, v11

    move-object v5, v10

    .line 74
    .local v5, "propertyField":[Ljava/lang/String;
    move-object v10, v5

    if-nez v10, :cond_1

    .line 75
    .line 96
    :goto_2
    move-object v10, v2

    invoke-static {v10}, Lgnu/mapping/Symbol;->parse(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v10

    move-object v4, v10

    .line 98
    .local v4, "symbol":Lgnu/mapping/Symbol;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v10

    .line 99
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v10

    move-object v5, v10

    .line 100
    .local v5, "current":Lgnu/mapping/Environment;
    move-object v10, v5

    move-object v11, v4

    const/4 v12, 0x0

    move-object v13, v3

    invoke-virtual {v10, v11, v12, v13}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0

    .line 76
    .local v4, "i":I
    .local v5, "propertyField":[Ljava/lang/String;
    :cond_1
    move-object v10, v2

    move-object v11, v5

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 78
    move-object v10, v5

    const/4 v11, 0x1

    aget-object v10, v10, v11

    move-object v6, v10

    .line 79
    .local v6, "cname":Ljava/lang/String;
    move-object v10, v5

    const/4 v11, 0x2

    aget-object v10, v10, v11

    move-object v7, v10

    .line 82
    .local v7, "fname":Ljava/lang/String;
    move-object v10, v6

    :try_start_0
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    move-object v8, v10

    .line 83
    .local v8, "clas":Ljava/lang/Class;
    move-object v10, v8

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/ThreadLocation;

    move-object v9, v10

    .line 85
    .local v9, "loc":Lgnu/mapping/ThreadLocation;
    move-object v10, v9

    move-object v11, v3

    invoke-virtual {v10, v11}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_2

    .line 88
    .end local v8    # "clas":Ljava/lang/Class;
    .end local v9    # "loc":Lgnu/mapping/ThreadLocation;
    :catch_0
    move-exception v10

    move-object v8, v10

    .line 90
    .local v8, "ex":Ljava/lang/Throwable;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "error setting property "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " field "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x2e

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    .line 71
    .end local v6    # "cname":Ljava/lang/String;
    .end local v7    # "fname":Ljava/lang/String;
    .end local v8    # "ex":Ljava/lang/Throwable;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method

.method public static setArgs([Ljava/lang/String;I)V
    .locals 14

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "args":[Ljava/lang/String;
    move v1, p1

    .local v1, "arg_start":I
    move-object v6, v0

    array-length v6, v6

    move v7, v1

    sub-int/2addr v6, v7

    move v2, v6

    .line 46
    .local v2, "nargs":I
    move v6, v2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v3, v6

    .line 47
    .local v3, "array":[Ljava/lang/Object;
    move v6, v1

    if-nez v6, :cond_0

    .line 48
    move-object v6, v0

    sput-object v6, Lgnu/expr/ApplicationMainSupport;->commandLineArgArray:[Ljava/lang/String;

    .line 56
    :goto_0
    move v6, v2

    move v4, v6

    .local v4, "i":I
    :goto_1
    add-int/lit8 v4, v4, -0x1

    move v6, v4

    if-ltz v6, :cond_2

    .line 57
    move-object v6, v3

    move v7, v4

    new-instance v8, Lgnu/lists/FString;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move v11, v4

    move v12, v1

    add-int/2addr v11, v12

    aget-object v10, v10, v11

    invoke-direct {v9, v10}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    aput-object v8, v6, v7

    goto :goto_1

    .line 51
    .end local v4    # "i":I
    :cond_0
    move v6, v2

    new-array v6, v6, [Ljava/lang/String;

    move-object v4, v6

    .line 52
    .local v4, "strings":[Ljava/lang/String;
    move v6, v2

    move v5, v6

    .local v5, "i":I
    :goto_2
    add-int/lit8 v5, v5, -0x1

    move v6, v5

    if-ltz v6, :cond_1

    .line 53
    move-object v6, v4

    move v7, v5

    move-object v8, v0

    move v9, v5

    move v10, v1

    add-int/2addr v9, v10

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    goto :goto_2

    .line 54
    :cond_1
    move-object v6, v4

    sput-object v6, Lgnu/expr/ApplicationMainSupport;->commandLineArgArray:[Ljava/lang/String;

    goto :goto_0

    .line 58
    .end local v5    # "i":I
    .local v4, "i":I
    :cond_2
    new-instance v6, Lgnu/lists/FVector;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v3

    invoke-direct {v7, v8}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    sput-object v6, Lgnu/expr/ApplicationMainSupport;->commandLineArguments:Lgnu/lists/FVector;

    .line 60
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v6

    const-string/jumbo v7, "command-line-arguments"

    sget-object v8, Lgnu/expr/ApplicationMainSupport;->commandLineArguments:Lgnu/lists/FVector;

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Environment;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 62
    return-void
.end method
