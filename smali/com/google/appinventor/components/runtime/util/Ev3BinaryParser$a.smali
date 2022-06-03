.class final Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:C

.field public size:I


# direct methods
.method public constructor <init>(CI)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v3, v0

    move v4, v1

    iput-char v4, v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:C

    .line 50
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    .line 51
    return-void
.end method
