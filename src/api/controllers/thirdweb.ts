import { ThirdwebSDK } from "@thirdweb-dev/sdk";

export const useThirdweb = new ThirdwebSDK("sepolia", {
  clientId: process.env.THIRDWEB_CLIENT_ID,
  secretKey: process.env.THIRDWEB_API_KEY,
});
