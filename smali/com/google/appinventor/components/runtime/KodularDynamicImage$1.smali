.class final Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularDynamicImage;->imagePermissionHelper(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic YvCSL3NGR2QTRYJR2TwKp0VDudhjPNaOEVNDS5yB8p5C86x6HrXaW1BAbVOWs3Le:Ljava/lang/String;

.field private synthetic f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatImageView;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicImage;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularDynamicImage;Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicImage;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;->YvCSL3NGR2QTRYJR2TwKp0VDudhjPNaOEVNDS5yB8p5C86x6HrXaW1BAbVOWs3Le:Ljava/lang/String;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    if-eqz v3, :cond_0

    .line 133
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicImage;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->access$000(Lcom/google/appinventor/components/runtime/KodularDynamicImage;Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicImage;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->access$100(Lcom/google/appinventor/components/runtime/KodularDynamicImage;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicImage;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;->YvCSL3NGR2QTRYJR2TwKp0VDudhjPNaOEVNDS5yB8p5C86x6HrXaW1BAbVOWs3Le:Ljava/lang/String;

    move-object v6, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    goto :goto_0
.end method
