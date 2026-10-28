.class Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/torquetheme/MainActivity$ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Holder"
.end annotation


# instance fields
.field iv:Landroid/widget/ImageView;

.field task:Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;

.field final synthetic this$1:Lcom/rey/torquetheme/MainActivity$ImageAdapter;


# direct methods
.method constructor <init>(Lcom/rey/torquetheme/MainActivity$ImageAdapter;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;->this$1:Lcom/rey/torquetheme/MainActivity$ImageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
