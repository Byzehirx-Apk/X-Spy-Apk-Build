.class public final Lorg/slf4j/helpers/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/slf4j/helpers/Util$ClassContextSecurityManager;
    }
.end annotation


# static fields
.field private static SECURITY_MANAGER:Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

.field private static SECURITY_MANAGER_CREATION_ALREADY_ATTEMPTED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lorg/slf4j/helpers/Util;->SECURITY_MANAGER_CREATION_ALREADY_ATTEMPTED:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/Util;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getCallingClass()Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lorg/slf4j/helpers/Util;->getSecurityManager()Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

    move-result-object v4

    move-object v0, v4

    .line 101
    .local v0, "securityManager":Lorg/slf4j/helpers/Util$ClassContextSecurityManager;
    move-object v4, v0

    if-nez v4, :cond_0

    .line 102
    const/4 v4, 0x0

    move-object v0, v4

    .line 118
    .end local v0    # "securityManager":Lorg/slf4j/helpers/Util$ClassContextSecurityManager;
    .local v1, "trace":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v2, "thisClassName":Ljava/lang/String;
    .local v3, "i":I
    :goto_0
    return-object v0

    .line 103
    .end local v1    # "trace":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "thisClassName":Ljava/lang/String;
    .end local v3    # "i":I
    .restart local v0    # "securityManager":Lorg/slf4j/helpers/Util$ClassContextSecurityManager;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lorg/slf4j/helpers/Util$ClassContextSecurityManager;->getClassContext()[Ljava/lang/Class;

    move-result-object v4

    move-object v1, v4

    .line 104
    .restart local v1    # "trace":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v4, Lorg/slf4j/helpers/Util;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 108
    .restart local v2    # "thisClassName":Ljava/lang/String;
    const/4 v4, 0x0

    move v3, v4

    .restart local v3    # "i":I
    :goto_1
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 109
    move-object v4, v2

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 110
    .line 114
    :cond_1
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_2

    move v4, v3

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    move-object v5, v1

    array-length v5, v5

    if-lt v4, v5, :cond_4

    .line 115
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Failed to find org.slf4j.helpers.Util or its caller in the stack; this should not happen"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 118
    :cond_4
    move-object v4, v1

    move v5, v3

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    aget-object v4, v4, v5

    move-object v0, v4

    goto :goto_0
.end method

.method private static getSecurityManager()Lorg/slf4j/helpers/Util$ClassContextSecurityManager;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/slf4j/helpers/Util;->SECURITY_MANAGER:Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lorg/slf4j/helpers/Util;->SECURITY_MANAGER:Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

    .line 82
    :goto_0
    return-object v0

    .line 77
    :cond_0
    sget-boolean v0, Lorg/slf4j/helpers/Util;->SECURITY_MANAGER_CREATION_ALREADY_ATTEMPTED:Z

    if-eqz v0, :cond_1

    .line 78
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {}, Lorg/slf4j/helpers/Util;->safeCreateSecurityManager()Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

    move-result-object v0

    sput-object v0, Lorg/slf4j/helpers/Util;->SECURITY_MANAGER:Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

    .line 81
    const/4 v0, 0x1

    sput-boolean v0, Lorg/slf4j/helpers/Util;->SECURITY_MANAGER_CREATION_ALREADY_ATTEMPTED:Z

    .line 82
    sget-object v0, Lorg/slf4j/helpers/Util;->SECURITY_MANAGER:Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

    goto :goto_0
.end method

.method public static final report(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SLF4J: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public static final report(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "msg":Ljava/lang/String;
    move-object v1, p1

    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "Reported exception:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    return-void
.end method

.method private static safeCreateSecurityManager()Lorg/slf4j/helpers/Util$ClassContextSecurityManager;
    .locals 5

    .prologue
    .line 88
    :try_start_0
    new-instance v1, Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/slf4j/helpers/Util$ClassContextSecurityManager;-><init>(Lorg/slf4j/helpers/Util$1;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 90
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 90
    .local v0, "sm":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static safeGetBooleanSystemProperty(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v2}, Lorg/slf4j/helpers/Util;->safeGetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 54
    .local v1, "value":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 55
    const/4 v2, 0x0

    move v0, v2

    .line 57
    .end local v0    # "key":Ljava/lang/String;
    :goto_0
    return v0

    .restart local v0    # "key":Ljava/lang/String;
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public static safeGetSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "key":Ljava/lang/String;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 41
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "null input"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 43
    :cond_0
    const/4 v3, 0x0

    move-object v1, v3

    .line 45
    .local v1, "result":Ljava/lang/String;
    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    .line 48
    .line 49
    :goto_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "key":Ljava/lang/String;
    return-object v0

    .line 46
    .restart local v0    # "key":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method
