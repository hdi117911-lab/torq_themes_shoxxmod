.class Lcom/ipaulpro/afilechooser/FileChooserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "FileChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipaulpro/afilechooser/FileChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ipaulpro/afilechooser/FileChooserActivity;


# direct methods
.method constructor <init>(Lcom/ipaulpro/afilechooser/FileChooserActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity$1;->this$0:Lcom/ipaulpro/afilechooser/FileChooserActivity;

    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    sget v0, Lcom/ipaulpro/afilechooser/R$string;->storage_removed:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 61
    iget-object v0, p0, Lcom/ipaulpro/afilechooser/FileChooserActivity$1;->this$0:Lcom/ipaulpro/afilechooser/FileChooserActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ipaulpro/afilechooser/FileChooserActivity;->access$0(Lcom/ipaulpro/afilechooser/FileChooserActivity;Ljava/io/File;)V

    .line 62
    return-void
.end method
