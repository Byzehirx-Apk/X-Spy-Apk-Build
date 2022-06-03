.class public Lcom/google/appinventor/components/runtime/util/Ev3Constants$DataFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/Ev3Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataFormat"
.end annotation


# static fields
.field public static final DATA_PCT:B = 0x10t

.field public static final DATA_RAW:B = 0x12t

.field public static final DATA_SI:B = 0x13t


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 419
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
