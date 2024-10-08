.class Lcom/mesalabs/cerberus/ui/app/ProgressDialog$1;
.super Landroid/os/Handler;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/mesalabs/cerberus/ui/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    .line 94
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog$1;->this$0:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 97
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 100
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog$1;->this$0:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    invoke-static {v0}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->access$000(Lcom/mesalabs/cerberus/ui/app/ProgressDialog;)Lcom/samsung/android/ui/widget/SeslProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getProgress()I

    move-result v0

    .line 101
    .local v0, "progress":I
    iget-object v1, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog$1;->this$0:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    invoke-static {v1}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->access$000(Lcom/mesalabs/cerberus/ui/app/ProgressDialog;)Lcom/samsung/android/ui/widget/SeslProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/ui/widget/SeslProgressBar;->getMax()I

    move-result v1

    .line 102
    .local v1, "max":I
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog$1;->this$0:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    invoke-static {v2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->access$100(Lcom/mesalabs/cerberus/ui/app/ProgressDialog;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog$1;->this$0:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    invoke-static {v2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->access$100(Lcom/mesalabs/cerberus/ui/app/ProgressDialog;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "format":Ljava/lang/String;
    iget-object v6, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog$1;->this$0:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    invoke-static {v6}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->access$200(Lcom/mesalabs/cerberus/ui/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .end local v2    # "format":Ljava/lang/String;
    goto :goto_0

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog$1;->this$0:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    invoke-static {v2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->access$200(Lcom/mesalabs/cerberus/ui/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_0
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog$1;->this$0:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    invoke-static {v2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->access$300(Lcom/mesalabs/cerberus/ui/app/ProgressDialog;)Landroid/icu/text/NumberFormat;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 109
    int-to-double v5, v0

    int-to-double v7, v1

    div-double/2addr v5, v7

    .line 110
    .local v5, "percent":D
    new-instance v2, Landroid/text/SpannableString;

    iget-object v7, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog$1;->this$0:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    invoke-static {v7}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->access$300(Lcom/mesalabs/cerberus/ui/app/ProgressDialog;)Landroid/icu/text/NumberFormat;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 111
    .local v2, "tmp":Landroid/text/SpannableString;
    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v8, 0x21

    invoke-virtual {v2, v7, v4, v3, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 112
    iget-object v3, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog$1;->this$0:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    invoke-static {v3}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->access$400(Lcom/mesalabs/cerberus/ui/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .end local v2    # "tmp":Landroid/text/SpannableString;
    .end local v5    # "percent":D
    goto :goto_1

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/mesalabs/cerberus/ui/app/ProgressDialog$1;->this$0:Lcom/mesalabs/cerberus/ui/app/ProgressDialog;

    invoke-static {v2}, Lcom/mesalabs/cerberus/ui/app/ProgressDialog;->access$400(Lcom/mesalabs/cerberus/ui/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :goto_1
    return-void
.end method
