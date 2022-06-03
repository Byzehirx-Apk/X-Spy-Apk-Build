.class final Lorg/slf4j/helpers/Util$ClassContextSecurityManager;
.super Ljava/lang/SecurityManager;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slf4j/helpers/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClassContextSecurityManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/Util$ClassContextSecurityManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/SecurityManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/slf4j/helpers/Util$1;)V
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/Util$ClassContextSecurityManager;
    move-object v1, p1

    .local v1, "x0":Lorg/slf4j/helpers/Util$1;
    move-object v2, v0

    invoke-direct {v2}, Lorg/slf4j/helpers/Util$ClassContextSecurityManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected getClassContext()[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/Util$ClassContextSecurityManager;
    move-object v1, v0

    invoke-super {v1}, Ljava/lang/SecurityManager;->getClassContext()[Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/Util$ClassContextSecurityManager;
    return-object v0
.end method
