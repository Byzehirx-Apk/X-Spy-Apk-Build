.class public interface abstract annotation Lcom/google/appinventor/components/annotations/androidmanifest/DataElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/DataElement;
        host = ""
        mimeType = ""
        path = ""
        pathPattern = ""
        pathPrefix = ""
        port = ""
        scheme = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract host()Ljava/lang/String;
.end method

.method public abstract mimeType()Ljava/lang/String;
.end method

.method public abstract path()Ljava/lang/String;
.end method

.method public abstract pathPattern()Ljava/lang/String;
.end method

.method public abstract pathPrefix()Ljava/lang/String;
.end method

.method public abstract port()Ljava/lang/String;
.end method

.method public abstract scheme()Ljava/lang/String;
.end method
