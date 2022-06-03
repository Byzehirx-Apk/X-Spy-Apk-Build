.class final Lcom/google/appinventor/components/runtime/KodularChatView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularChatView;->addCircleClickListener(Lde/hdodenhof/circleimageview/CircleImageView;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularChatView;

.field private synthetic lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularChatView;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 323
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/KodularChatView$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularChatView;

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/google/appinventor/components/runtime/KodularChatView$1;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:I

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/KodularChatView$1;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Ljava/lang/String;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 326
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularChatView$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularChatView;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/KodularChatView$1;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:I

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularChatView$1;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/KodularChatView;->UserImageClick(ILjava/lang/String;)V

    .line 327
    return-void
.end method
