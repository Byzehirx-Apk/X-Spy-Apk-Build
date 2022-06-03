.class final Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/AssetFetcher;->fetchAssets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic CjxGCkQSTAjvR1nNlMdbKil40XRwRktLBU1cWxZmNEv2KEZKq1wwOgz5H2xrzq8N:Ljava/lang/String;

.field private synthetic FrTvqStiZO2F73haZ4c62UUmwpyiTR0Q3saFC1nYzrvmpyGkgyFFxTtzoQAKnoll:Ljava/lang/String;

.field private synthetic Sa0jypR6YD5j7ayqbvuoqzuaJRSrX8yjkvtL3QPciDNsj5IsamevCs24OFmH7uZQ:Ljava/lang/String;

.field private synthetic WXrxsncNaI12QELoywiijcLROkSQSR7QVFw2zT3BVYf147C9TZQ4jsxpxFZAUav:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->CjxGCkQSTAjvR1nNlMdbKil40XRwRktLBU1cWxZmNEv2KEZKq1wwOgz5H2xrzq8N:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->Sa0jypR6YD5j7ayqbvuoqzuaJRSrX8yjkvtL3QPciDNsj5IsamevCs24OFmH7uZQ:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->FrTvqStiZO2F73haZ4c62UUmwpyiTR0Q3saFC1nYzrvmpyGkgyFFxTtzoQAKnoll:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->WXrxsncNaI12QELoywiijcLROkSQSR7QVFw2zT3BVYf147C9TZQ4jsxpxFZAUav:Ljava/lang/String;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 66
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->CjxGCkQSTAjvR1nNlMdbKil40XRwRktLBU1cWxZmNEv2KEZKq1wwOgz5H2xrzq8N:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/ode/download/file/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->Sa0jypR6YD5j7ayqbvuoqzuaJRSrX8yjkvtL3QPciDNsj5IsamevCs24OFmH7uZQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->FrTvqStiZO2F73haZ4c62UUmwpyiTR0Q3saFC1nYzrvmpyGkgyFFxTtzoQAKnoll:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->WXrxsncNaI12QELoywiijcLROkSQSR7QVFw2zT3BVYf147C9TZQ4jsxpxFZAUav:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->FrTvqStiZO2F73haZ4c62UUmwpyiTR0Q3saFC1nYzrvmpyGkgyFFxTtzoQAKnoll:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 68
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->FrTvqStiZO2F73haZ4c62UUmwpyiTR0Q3saFC1nYzrvmpyGkgyFFxTtzoQAKnoll:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/RetValManager;->assetTransferred(Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method
