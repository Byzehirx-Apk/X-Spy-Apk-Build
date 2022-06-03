.class public Lorg/jose4j/jwk/Use;
.super Ljava/lang/Object;
.source "Use.java"


# static fields
.field public static final ENCRYPTION:Ljava/lang/String; = "enc"

.field public static final SIGNATURE:Ljava/lang/String; = "sig"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/jwk/Use;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
