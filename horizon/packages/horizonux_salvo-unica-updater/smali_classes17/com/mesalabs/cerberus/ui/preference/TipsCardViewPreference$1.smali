.class Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference$1;
.super Ljava/lang/Object;
.source "TipsCardViewPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference;->onBindViewHolder(Lcom/samsung/android/ui/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference;


# direct methods
.method constructor <init>(Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference;

    .line 55
    iput-object p1, p0, Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference$1;->this$0:Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference$1;->this$0:Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference;

    invoke-static {v0}, Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference;->access$000(Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference;)Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference$TipsCardListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mesalabs/cerberus/ui/preference/TipsCardViewPreference$TipsCardListener;->onCancelClicked(Landroid/view/View;)V

    .line 58
    return-void
.end method
