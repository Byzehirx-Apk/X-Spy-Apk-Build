.class final Lcom/google/appinventor/components/runtime/Web$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web;->performRequest(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ATk09PTFIUWb1DqQXgMu0NmsbfZK89sTID9U9fCgIZdoNsjPWnKT9boGyGQNlMd:I

.field private synthetic f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web;

.field private synthetic tZ3MHVIBuNU67lxFNgCfPbYt4voTRUFM1SdsgXyVm2022j7Uxoq2n9N4FRCZY6Ar:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 947
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/Web$6;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/Web$6;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/google/appinventor/components/runtime/Web$6;->ATk09PTFIUWb1DqQXgMu0NmsbfZK89sTID9U9fCgIZdoNsjPWnKT9boGyGQNlMd:I

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/Web$6;->tZ3MHVIBuNU67lxFNgCfPbYt4voTRUFM1SdsgXyVm2022j7Uxoq2n9N4FRCZY6Ar:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/Web$6;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Ljava/lang/String;

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 950
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web$6;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Web$6;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Web$6;->ATk09PTFIUWb1DqQXgMu0NmsbfZK89sTID9U9fCgIZdoNsjPWnKT9boGyGQNlMd:I

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Web$6;->tZ3MHVIBuNU67lxFNgCfPbYt4voTRUFM1SdsgXyVm2022j7Uxoq2n9N4FRCZY6Ar:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Web$6;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Web;->GotFile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 951
    return-void
.end method
