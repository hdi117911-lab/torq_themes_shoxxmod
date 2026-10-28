.class Lcom/rey/torquetheme/DetailFragment$2;
.super Ljava/lang/Object;
.source "DetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rey/torquetheme/DetailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rey/torquetheme/DetailFragment;


# direct methods
.method constructor <init>(Lcom/rey/torquetheme/DetailFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rey/torquetheme/DetailFragment$2;->this$0:Lcom/rey/torquetheme/DetailFragment;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/rey/torquetheme/DetailFragment$2;->this$0:Lcom/rey/torquetheme/DetailFragment;

    invoke-static {v0}, Lcom/rey/torquetheme/DetailFragment;->access$5(Lcom/rey/torquetheme/DetailFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/rey/torquetheme/DetailFragment$2;->this$0:Lcom/rey/torquetheme/DetailFragment;

    iget-object v1, p0, Lcom/rey/torquetheme/DetailFragment$2;->this$0:Lcom/rey/torquetheme/DetailFragment;

    invoke-static {v1}, Lcom/rey/torquetheme/DetailFragment;->access$5(Lcom/rey/torquetheme/DetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rey/torquetheme/DetailFragment;->access$6(Lcom/rey/torquetheme/DetailFragment;Ljava/lang/String;)V

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/rey/torquetheme/DetailFragment$2;->this$0:Lcom/rey/torquetheme/DetailFragment;

    invoke-virtual {v0}, Lcom/rey/torquetheme/DetailFragment;->dismiss()V

    .line 154
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/rey/torquetheme/DetailFragment$2;->this$0:Lcom/rey/torquetheme/DetailFragment;

    invoke-static {v0}, Lcom/rey/torquetheme/DetailFragment;->access$7(Lcom/rey/torquetheme/DetailFragment;)V

    goto :goto_0
.end method
