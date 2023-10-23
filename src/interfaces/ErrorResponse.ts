import MessageResponse from "./MessageResponse";

export default interface ErrorResponse extends MessageResponse {
  statusCode?: number;
  stack?: string;
}
