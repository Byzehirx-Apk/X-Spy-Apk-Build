.class public Lcom/google/appinventor/components/runtime/util/Ev3Constants$SoundSubcode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/Ev3Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundSubcode"
.end annotation


# static fields
.field public static final BREAK:B = 0x0t

.field public static final PLAY:B = 0x2t

.field public static final REPEAT:B = 0x3t

.field public static final SERVICE:B = 0x4t

.field public static final TONE:B = 0x1t


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 299
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
