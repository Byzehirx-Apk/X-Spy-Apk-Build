.class public interface abstract Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MapFeatureCollection"
.end annotation


# virtual methods
.method public abstract Features()Lcom/google/appinventor/components/runtime/util/YailList;
.end method

.method public abstract GotFeatures(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
.end method

.method public abstract LoadError(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract LoadFromURL(Ljava/lang/String;)V
.end method

.method public abstract Source()Ljava/lang/String;
.end method

.method public abstract Source(Ljava/lang/String;)V
.end method

.method public abstract Visible()Z
.end method
