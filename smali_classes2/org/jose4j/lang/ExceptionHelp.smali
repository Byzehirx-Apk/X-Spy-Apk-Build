.class public Lorg/jose4j/lang/ExceptionHelp;
.super Ljava/lang/Object;
.source "ExceptionHelp.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/lang/ExceptionHelp;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toStringWithCauses(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 28
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 29
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 31
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    move-object v0, v2

    .line 32
    move-object v2, v1

    const-string/jumbo v3, "; caused by: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0

    .line 34
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "t":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static toStringWithCausesAndAbbreviatedStack(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "t":Ljava/lang/Throwable;
    move-object v1, p1

    .local v1, "stopAt":Ljava/lang/Class;
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v8

    .line 40
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x1

    move v3, v8

    .line 41
    .local v3, "first":Z
    :goto_0
    move-object v8, v0

    if-eqz v8, :cond_3

    .line 43
    move v8, v3

    if-nez v8, :cond_0

    .line 45
    move-object v8, v2

    const-string/jumbo v9, "; caused by: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 48
    :cond_0
    move-object v8, v2

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 50
    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    move-object v4, v8

    .local v4, "arr$":[Ljava/lang/StackTraceElement;
    move-object v8, v4

    array-length v8, v8

    move v5, v8

    .local v5, "len$":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i$":I
    :goto_1
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_1

    move-object v8, v4

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 52
    .local v7, "ste":Ljava/lang/StackTraceElement;
    move-object v8, v7

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 54
    move-object v8, v2

    const-string/jumbo v9, "...omitted..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 55
    .line 60
    .end local v7    # "ste":Ljava/lang/StackTraceElement;
    :cond_1
    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    move-object v0, v8

    .line 61
    const/4 v8, 0x0

    move v3, v8

    goto :goto_0

    .line 57
    .restart local v7    # "ste":Ljava/lang/StackTraceElement;
    :cond_2
    move-object v8, v2

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 50
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 64
    .end local v4    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    .end local v7    # "ste":Ljava/lang/StackTraceElement;
    :cond_3
    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "t":Ljava/lang/Throwable;
    return-object v0
.end method
